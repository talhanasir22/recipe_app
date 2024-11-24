import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/SearchPage.dart';

class SearchField extends StatelessWidget{
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Material(
          elevation: 5.0, // Controls the shadow depth
          shadowColor: Colors.grey.withOpacity(0.5), // Adjusts shadow color and opacity
          borderRadius: BorderRadius.circular(30), // Matches the TextField border radius
          child: SizedBox(
            width: 250,
            child: TextField(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SearchPage()), (Route<dynamic> route) => false);
              },
              readOnly: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: 'Search recipe...',
                hintStyle: const TextStyle(color: Colors.black54),
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none, // Removes the default border
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  }