import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recipe_app/RecipeContainer.dart';
import 'package:recipe_app/SearchField.dart';
import 'FavouritePage.dart';
import 'TimerPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const MyHomePageContent(),
    const TimerPage(),
    const MyFavouritePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(), // Disable swipe gesture
          children: _pages,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12), topLeft: Radius.circular(12)),
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 2, // Set border width to 2
                ),
              ),
            ),
            child: GNav(
              gap: 8,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.015,
              ),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey,
              activeColor: const Color(0xFFEDA537),
              iconSize: MediaQuery.of(context).size.width * 0.06,
              textStyle: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),
              selectedIndex: _currentIndex,
              onTabChange: _onItemTapped,
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.timer, text: 'Timer'),
                GButton(icon: Icons.favorite, text: 'Favorites'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePageContent extends StatelessWidget {
  const MyHomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/Images/RecipeVerse.png'),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const MyFavouritePage(),
                          type: PageTransitionType.rightToLeft),
                          (Route<dynamic> route) => false);
                },
                icon: const Icon(Icons.favorite_border, size: 30),
              ),
            ],
          ),
          const Center(
              child: Text(
                'Welcome to RecipeVerse',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          const SearchField(),
          const SizedBox(height: 20),
          const Row(
            children: [
              SizedBox(width: 10),
              Text(
                'Explore Recipes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RecipeContainer(
                  recipeimage: Image.asset('assets/Images/Chineese.png'),
                  recipetext: const Text(
                    'Chinese',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), Pagetitle:  'Chinese',
                ),
                RecipeContainer(
                  recipeimage: Image.asset('assets/Images/American.png'),
                  recipetext: const Text('American',
                      style: TextStyle(fontWeight: FontWeight.bold)), Pagetitle: 'American',
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RecipeContainer(
                  recipeimage: Image.asset('assets/Images/Italian.png'),
                  recipetext: const Text('Italian',
                      style: TextStyle(fontWeight: FontWeight.bold)), Pagetitle: 'Italian',
                ),
                RecipeContainer(
                  recipeimage: Image.asset('assets/Images/Indian.png'),
                  recipetext: const Text('Indian',
                      style: TextStyle(fontWeight: FontWeight.bold)), Pagetitle: 'Indian',
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
