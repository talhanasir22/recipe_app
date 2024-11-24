import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My_home_page.dart';
import 'main.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color(0xFFEDA537),
      child: Image.asset('assets/Images/RecipeVerse.png',
      ),
    );
  }
}