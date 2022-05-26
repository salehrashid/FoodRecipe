import 'package:flutter/material.dart';
import 'package:food_recipe/model/BeveragesData.dart';
import 'package:food_recipe/model/LunchData.dart';

class DetailBevPage extends StatelessWidget {
  final Beverages beverages;
  const DetailBevPage({Key? key, required this.beverages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 300.0,
        child: Image.network(beverages.imgUrl, fit: BoxFit.fitWidth,),
      ),
    );
  }
}

class DetailLunchPage extends StatelessWidget {
  final Lunch lunch;
  const DetailLunchPage({Key? key, required this.lunch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.network(lunch.imgUrl),
      ),
    );
  }
}
