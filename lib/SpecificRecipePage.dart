import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/DishModel.dart';
import 'package:recipe_app/recipe_detail_page.dart';
import 'FavoriteModel.dart';
import 'package:recipe_app/Dish.dart';
import 'My_home_page.dart';

class SpecificRecipePage extends StatefulWidget{
  final String Pagetitle;
   const SpecificRecipePage({super.key, required this.Pagetitle, });

  @override
  State<SpecificRecipePage> createState() => _SpecificRecipePageState();
}

class _SpecificRecipePageState extends State<SpecificRecipePage> {

  @override
  void initState() {
    super.initState();
  }

  void _onDishTap(String dishTitle , dishtileimagepath ,dishcalories , dishtime, dishflavour ,dishdescription,dishingredients, dishmakinginstrcutions ) {
    Navigator.push(
      context,
      PageTransition(
        child: RecipeDetailPage(
          pageTitle: widget.Pagetitle,
          dishTitle: dishTitle,
          calories: dishcalories,
          time: dishtime,
          flavour: dishflavour,
          description: dishdescription,
          ingredients: dishingredients,
          instructions: dishmakinginstrcutions, titleImage: dishtileimagepath,
        ),
        type: PageTransitionType.rightToLeft,
      ),
    );
  }
  Widget? _selectCategory() {
    // Convert Text widget content to a String for comparison
    String category = widget.Pagetitle; // Safely handle null values

    if (category == 'Chinese') {
      return _ChineseDishes();
    } else if (category == 'American') {
      return _AmericanDishes();
    } else if (category == 'Italian') {
      return _ItalianDishes();
    } else if (category == 'Indian') {
      return _IndianDishes();
    } else {
      return const Text('Unknown Category');
    }
  }
  Widget _ChineseDishes() {
    return Consumer<DishModel>(
      builder:(context , chinesedish , child)=> ListView.builder(
        itemCount: chinesedish.chineseDishesname.length,
        itemBuilder: (context, index) {
          String dishName = chinesedish.chineseDishesname[index];
          String dishDescription = chinesedish.chineseDishDescriptions[index];
          String dishImage = chinesedish.chineseDishesImages[index];
          String dishCalories = chinesedish.chineseDishCalories[index];
          String dishTime = chinesedish.chineseDishTime[index];
          String dishflavour = chinesedish.chineseDishFlavor[index];
          String dishIngredients = chinesedish.chineseDishesIngredients[index];
          String dishInstruction = chinesedish.chineseDishesInstructions[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                  child: Image.asset(
                    chinesedish.chineseDishesImages[index],
                    width: 100, // Set the desired width
                    fit: BoxFit.cover, // Ensures the image covers the entire area
                  ),
                ),
                title: Text(
                  dishName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: ()=> _onDishTap(chinesedish.chineseDishesname[index], chinesedish.chineseDishesImages[index],
                    chinesedish.chineseDishCalories[index] , chinesedish.chineseDishTime[index] , chinesedish.chineseDishFlavor[index] , chinesedish.chineseDishDescriptions[index],
                    chinesedish.chineseDishesIngredients[index],chinesedish.chineseDishesInstructions[index]
                ),
                subtitle: Text(chinesedish.chineseDishDescriptions[index]),
                trailing: Consumer<FavoriteModel>(
                  builder: (context, favoriteModel, child) {
                    bool isFavorite = favoriteModel.isFavorite( Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishflavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                    return IconButton(
                      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                      color: isFavorite ? Colors.red : Colors.black,
                      onPressed: () {
                        favoriteModel.toggleFavorite(context , Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishflavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  Widget _AmericanDishes() {
    return Consumer<DishModel>(
      builder:(context , americanDish , child)=> ListView.builder(
        itemCount: americanDish.americanDishesname.length,
        itemBuilder: (context, index) {
          String dishName = americanDish.americanDishesname[index];
          String dishDescription = americanDish.americanDishDescriptions[index];
          String dishImage = americanDish.americanDishesImages[index];
          String dishCalories = americanDish.americanDishesCalories[index];
          String dishTime = americanDish.americanDishesTime[index];
          String dishFlavour = americanDish.americanDishesFlavor[index];
          String dishIngredients = americanDish.americanDishesIngredients[index];
          String dishInstruction = americanDish.americanDishesInstructions[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                  child: Image.asset(
                    americanDish.americanDishesImages[index],
                    width: 100, // Set the desired width
                    fit: BoxFit.cover, // Ensures the image covers the entire area
                  ),
                ),
                title: Text(
                  americanDish.americanDishesname[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: ()=> _onDishTap(americanDish.americanDishesname[index], americanDish.americanDishesImages[index],
                    americanDish.americanDishesCalories[index] , americanDish.americanDishesTime[index] , americanDish.americanDishesFlavor[index],americanDish.americanDishDescriptions[index],
                    americanDish.americanDishesIngredients[index],americanDish.americanDishesInstructions[index]
                ),
                subtitle: Text(americanDish.americanDishDescriptions[index]),
                trailing: Consumer<FavoriteModel>(
                  builder: (context, favoriteModel, child) {
                    bool isFavorite = favoriteModel.isFavorite(Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishFlavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                    return IconButton(
                      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                      color: isFavorite ? Colors.red : Colors.black,
                      onPressed: () {
                        favoriteModel.toggleFavorite(context , Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishFlavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  Widget _ItalianDishes() {
    return Consumer<DishModel>(
      builder:(context , italianDish , child)=> ListView.builder(
        itemCount: italianDish.italianDishesname.length,
        itemBuilder: (context, index) {
          String dishName = italianDish.italianDishesname[index];
          String dishDescription = italianDish.italianDishDescriptions[index];
          String dishImage = italianDish.italianDishesImages[index];
          String dishCalories = italianDish.italianDishesCalories[index];
          String dishTime = italianDish.italianDishesTime[index];
          String dishFlavour = italianDish.italianDishesFlavor[index];
          String dishIngredients = italianDish.italianDishesIngredients[index];
          String dishInstruction = italianDish.italianDishesInstructions[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                  child: Image.asset(
                    italianDish.italianDishesImages[index],
                    width: 100, // Set the desired width
                    fit: BoxFit.cover, // Ensures the image covers the entire area
                  ),
                ),
                title: Text(
                  italianDish.italianDishesname[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: ()=> _onDishTap(italianDish.italianDishesname[index], italianDish.italianDishesImages[index],
                    italianDish.italianDishesCalories[index] , italianDish.italianDishesTime[index] , italianDish.italianDishesFlavor[index],italianDish.italianDishDescriptions[index],
                    italianDish.italianDishesIngredients[index],italianDish.italianDishesInstructions[index]
                ),
                subtitle: Text(italianDish.italianDishDescriptions[index]),
                trailing: Consumer<FavoriteModel>(
                  builder: (context, favoriteModel, child) {
                    bool isFavorite = favoriteModel.isFavorite(Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishFlavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                    return IconButton(
                      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                      color: isFavorite ? Colors.red : Colors.black,
                      onPressed: () {
                        favoriteModel.toggleFavorite(context, Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishFlavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  Widget _IndianDishes() {
    return Consumer<DishModel>(
      builder:(context , indianDish , child)=> ListView.builder(
        itemCount: indianDish.indianDishesname.length,
        itemBuilder: (context, index) {
          String dishName = indianDish.indianDishesname[index];
          String dishDescription = indianDish.indianDishDescriptions[index];
          String dishImage = indianDish.indianDishesImages[index];
          String dishCalories = indianDish.indianDishesCalories[index];
          String dishTime = indianDish.indianDishesTime[index];
          String dishFlavour = indianDish.indianDishesFlavor[index];
          String dishIngredients = indianDish.indianDishesIngredients[index];
          String dishInstruction = indianDish.indianDishesInstructions[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                  child: Image.asset(
                    indianDish.indianDishesImages[index],
                    width: 100, // Set the desired width
                    fit: BoxFit.cover, // Ensures the image covers the entire area
                  ),
                ),
                title: Text(
                  indianDish.indianDishesname[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: ()=> _onDishTap(indianDish.indianDishesname[index], indianDish.indianDishesImages[index],
                    indianDish.indianDishesCalories[index] , indianDish.indianDishesTime[index] , indianDish.indianDishesFlavor[index],indianDish.indianDishDescriptions[index],
                    indianDish.indianDishesIngredients[index],indianDish.indianDishesInstructions[index]
                ),
                subtitle: Text(indianDish.indianDishDescriptions[index]),
                trailing: Consumer<FavoriteModel>(
                  builder: (context, favoriteModel, child) {
                    bool isFavorite = favoriteModel.isFavorite(Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishFlavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                    return IconButton(
                      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                      color: isFavorite ? Colors.red : Colors.black,
                      onPressed: () {
                        favoriteModel.toggleFavorite(context , Dish(pageTitle: '', dishTitle: dishName, titleImage: dishImage, calories: dishCalories, time: dishTime, flavour: dishFlavour, description: dishDescription, ingredients: dishIngredients, instructions: dishInstruction));
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
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
            title: Text(
              widget.Pagetitle, // Safely handle null values
              style: const TextStyle(
                fontSize: 24, // Set your desired font size here
                fontWeight: FontWeight.bold, // Make the text bold
              ),
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
          body: _selectCategory()
        ),
      ),
    );
  }
}