import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'SpecificRecipePage.dart';

class RecipeContainer extends StatelessWidget{
  const RecipeContainer({super.key, required this.recipeimage, required this.recipetext, required this.Pagetitle});
  final recipeimage;
  final recipetext;
  final String Pagetitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushAndRemoveUntil(context,
            PageTransition(child:  SpecificRecipePage(Pagetitle: Pagetitle,),
                type: PageTransitionType.rightToLeft),
                (Route<dynamic>route) => false);
      },
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
                width: 100,
                child: recipeimage),
            recipetext,
          ],
        ),
      ),
    );
  }

}
