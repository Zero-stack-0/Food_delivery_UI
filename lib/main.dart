import 'package:flutter/material.dart';
import 'package:fooddelivery/Home.dart';
import 'package:fooddelivery/login.dart';
import 'package:fooddelivery/mealdetail.dart';
import 'package:fooddelivery/mealorder.dart';
import 'package:fooddelivery/singup.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const Loginpage(),
            '/Home': (context) => const Home(),
            '/MealDetail': (context) => const MealDetail(),
            '/MealOrder': (context) => const MealOrder(),
            '/Login': ((context) => const Loginpage()),
            '/SingUp': (context) => const Singup()
          },
        );
      },
    );
  }
}
