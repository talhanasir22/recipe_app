import 'dart:convert';

class Dish {
  late final String pageTitle;
  late final String dishTitle;
  late final String titleImage;
  late final String calories;
  late final String time;
  late final String flavour;
  late final String description;
  late final String ingredients;
  late final String instructions;

  Dish({
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

  // Method to convert a Dish object to a Map (serialization)
  Map<String, dynamic> toMap() {
    return {
      'pageTitle': pageTitle,
      'dishTitle': dishTitle,
      'titleImage': titleImage,
      'calories': calories,
      'time': time,
      'flavour': flavour,
      'description': description,
      'ingredients': ingredients,
      'instructions': instructions,
    };
  }

  // Factory method to create a Dish from a Map (deserialization)
  factory Dish.fromMap(Map<String, dynamic> map) {
    return Dish(
      pageTitle: map['pageTitle'],
      dishTitle: map['dishTitle'],
      titleImage: map['titleImage'],
      calories: map['calories'],
      time: map['time'],
      flavour: map['flavour'],
      description: map['description'],
      ingredients: map['ingredients'],
      instructions: map['instructions'],
    );
  }

  // Method to convert a Dish object to a JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create a Dish object from a JSON string
  factory Dish.fromJson(String source) => Dish.fromMap(json.decode(source));
}
