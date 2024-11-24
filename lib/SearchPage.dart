import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recipe_app/recipe_detail_page.dart';

import 'DishModel.dart';
import 'My_home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  List<String> filteredDishNames = [];
  DishModel dishModel = DishModel();

  void searchQuery(String query) {
    List<String> allDishes = dishModel.getAllDishesByName();

    setState(() {
      filteredDishNames = allDishes
          .where((dishName) =>
          dishName.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
    });
  }

  void _onDishTap(String dishName) {
    List<String> allDishesNames = dishModel.getAllDishesByName();
    List<String> allDishesDescriptions = dishModel.getAllDishesByDescription();
    List<String> allDishesCalories = dishModel.getAllDishesByCalories();
    List<String> allDishesTime = dishModel.getAllDishesByTime();
    List<String> allDishesFlavours = dishModel.getAllDishesByFlavour();
    List<String> allDishesIngredients = dishModel.getAllDishesByIngredients();
    List<String> allDishesInstructions = dishModel.getAllDishesByInstructions();
    List<String> allDishesImages = dishModel.getAllDishesByImages();

    int index = allDishesNames.indexOf(dishName);

    if (index != -1) {
      Navigator.push(
        context,
        PageTransition(
          child: RecipeDetailPage(
            pageTitle: '',
            dishTitle: allDishesNames[index],
            calories: allDishesCalories[index],
            time: allDishesTime[index],
            flavour: allDishesFlavours[index],
            description: allDishesDescriptions[index],
            ingredients: allDishesIngredients[index],
            instructions: allDishesInstructions[index],
            titleImage: allDishesImages[index],
          ),
          type: PageTransitionType.rightToLeft,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
              child: const MyHomePage(),
              type: PageTransitionType.leftToRight,
            ),
                (Route<dynamic> route) => false,
          );
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: Material(
              elevation: 5.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: searchController,
                  onChanged: searchQuery,
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: 'Search recipe...',
                    hintStyle: const TextStyle(color: Colors.black54),
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    child: const MyHomePage(),
                    type: PageTransitionType.leftToRight,
                  ),
                      (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: searchController.text.isNotEmpty
              ? ListView.builder(
            itemCount: filteredDishNames.length,
            itemBuilder: (context, index) {
              final dishName = filteredDishNames[index];
              return ListTile(
                onTap: () => _onDishTap(dishName),
                title: Text(dishName),
              );
            },
          )
              : const Center(
            child: Text('No recipes found.'),
          ),
        ),
      ),
    );
  }
}
