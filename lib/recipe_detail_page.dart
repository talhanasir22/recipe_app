import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Dish.dart';
import 'FavoriteModel.dart';

class RecipeDetailPage extends StatefulWidget {
  const RecipeDetailPage({
    super.key,
    required this.pageTitle,
    required this.dishTitle,
    required this.titleImage,
    required this.calories,
    required this.time,
    required this.flavour,
    required this.description,
    required this.ingredients,
    required this.instructions,
  });

  final String pageTitle;
  final String dishTitle;
  final String titleImage;
  final String calories;
  final String time;
  final String flavour;
  final String description;
  final String ingredients;
  final String instructions;

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  late Dish dish;

  @override
  void initState() {
    super.initState();
    // Initialize the `dish` object using the data from the widget
    dish = Dish(
      pageTitle: widget.pageTitle,
      dishTitle: widget.dishTitle,
      titleImage: widget.titleImage,
      calories: widget.calories,
      time: widget.time,
      flavour: widget.flavour,
      description: widget.description,
      ingredients: widget.ingredients,
      instructions: widget.instructions,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(widget.titleImage),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.dishTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Consumer<FavoriteModel>(
                      builder: (context, favoriteModel, child) {
                        final isFavorite = favoriteModel.isFavorite(dish);
                        return IconButton(
                          onPressed: () {
                            favoriteModel.toggleFavorite(context , dish);
                          },
                          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                          color: isFavorite ? Colors.red : Colors.black,
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.local_fire_department, color: Color(0xFFFFA726)),
                      Text(widget.calories),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.timer, color: Colors.grey.shade400),
                      Text(widget.time),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.local_dining, color: Colors.black),
                      Text(widget.flavour),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
                child: Text(widget.description),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Recipe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue.shade300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                child: Text(widget.ingredients),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Instructions',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue.shade300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.instructions),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
