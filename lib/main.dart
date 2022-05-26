import 'package:flutter/material.dart';
import 'package:food_recipe/view/home.dart';
import 'package:food_recipe/view/beverage.dart';
import 'package:food_recipe/view/dessert.dart';
import 'package:food_recipe/view/lunch.dart';
import 'package:food_recipe/view/setting.dart';
import 'package:food_recipe/view/snack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) {
          return const HomePage();
        },
        "/beverages": (BuildContext context) {
          return const BevPage();
        },
        "/dessert": (BuildContext context) {
          return const DesPage();
        },
        "/lunch": (BuildContext context) {
          return const LunchPage();
        },
        "/snack": (BuildContext context) {
          return const SnackPage();
        },
        "/setting": (BuildContext context) {
          return const Setting();
        },
      },
    );
  }
}
