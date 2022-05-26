import 'package:flutter/material.dart';
import 'package:food_recipe/view/NavDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Food Recipe")),
        drawer: const NavDrawer(),
        body: Container()
      );
}
