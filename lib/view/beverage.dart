import 'package:flutter/material.dart';
import 'package:food_recipe/model/BeveragesData.dart';
import 'package:food_recipe/view/detail.dart';
import 'package:food_recipe/view/NavDrawer.dart';

class BevPage extends StatefulWidget {
  const BevPage({Key? key}) : super(key: key);

  @override
  State<BevPage> createState() => _BevPageState();
}

class _BevPageState extends State<BevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Beverage"),
          centerTitle: true,
          backgroundColor: Colors.green),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: List.generate(beveragesData.length, (index) {
            return Center(
              child: Cards(
                beverages: beveragesData[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key, required this.beverages}) : super(key: key);

  final BeveragesData beverages;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailBevPage(
                      beverages: beverages,
                    )));
      },
      child: Card(
        elevation: 4.0,
        color: Colors.white,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: beverages.imgUrl,
              child: SizedBox(
                height: 140.0,
                width: 170.0,
                child: Image.network(
                  beverages.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              beverages.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
