import 'package:flutter/material.dart';
import 'package:fooddelivery/Home.dart';
import 'package:fooddelivery/login.dart';
import 'package:fooddelivery/mealdetail.dart';
import 'package:fooddelivery/mealorder.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      routes: {
        '/': (context) => const Loginpage(),
        '/Home': (context) => const Home(),
        '/MealDetail': (context) => const MealDetail(),
        '/MealOrder': (context) => const MealOrder(),
        '/Login': ((context) => const Loginpage())
      },
    );
  }
}
