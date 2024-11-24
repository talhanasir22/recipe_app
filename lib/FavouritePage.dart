import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recipe_app/Dish.dart';
import 'package:recipe_app/recipe_detail_page.dart';
import 'FavoriteModel.dart';
import 'My_home_page.dart';

class MyFavouritePage extends StatelessWidget {
  const MyFavouritePage({super.key});

  void _onDishTap(BuildContext context, Dish dish) {
    Navigator.push(
      context,
      PageTransition(
        child: RecipeDetailPage(
          pageTitle: '',
          dishTitle: dish.dishTitle,
          calories: dish.calories,
          time: dish.time,
          flavour: dish.flavour,
          description: dish.description,
          ingredients: dish.ingredients,
          instructions: dish.instructions,
          titleImage: dish.titleImage,
        ),
        type: PageTransitionType.rightToLeft,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          // Navigate to the home page when the back gesture or button is triggered
          Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
              child: const MyHomePage(),
              type: PageTransitionType.leftToRight,
            ),
                (Route<dynamic> route) => false,
          );
          return false; // Prevent default back navigation
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Favorites',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
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
          body: Consumer<FavoriteModel>(
            builder: (context, favoriteModel, child) {
              if (favoriteModel.favoriteDishes.isEmpty) {
                return const Center(
                  child: Text(
                    'No Favorites yet',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: favoriteModel.favoriteDishes.length,
                  itemBuilder: (context, index) {
                    Dish dish = favoriteModel.favoriteDishes[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity, // Adjusted to take full width
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(21),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                          title: Text(dish.dishTitle),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(5), // Rounded corners
                            child: Image.asset(
                              dish.titleImage,
                              width: 100, // Set the desired width
                              fit: BoxFit.cover, // Ensures the image covers the entire area
                            ),
                          ),
                          onTap: () => _onDishTap(context, dish), // Pass context and dish
                          subtitle: Text(dish.description),
                          trailing: IconButton(
                            icon: Icon(
                              favoriteModel.isFavorite(dish)
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: favoriteModel.isFavorite(dish)
                                  ? Colors.red
                                  : Colors.black,
                            ),
                            onPressed: () {
                              favoriteModel.toggleFavorite(context , dish);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
