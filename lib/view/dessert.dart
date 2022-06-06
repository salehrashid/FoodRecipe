import 'package:flutter/material.dart';
import 'package:food_recipe/model/DessertData.dart';
import 'package:food_recipe/view/NavDrawer.dart';
import 'package:food_recipe/view/detail.dart';

class DesPage extends StatefulWidget {
  const DesPage({Key? key}) : super(key: key);

  @override
  State<DesPage> createState() => _DesPageState();
}

class _DesPageState extends State<DesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 224, 144, 1.0),
        title: const Text("Dessert"),
        centerTitle: true,
      ),
      drawer: NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: List.generate(dessertData.length, (index) {
            return Center(
              child: Cards(
                dessert: dessertData[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key, required this.dessert}) : super(key: key);

  final DessertData dessert;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailDesPage(
                      dessert: dessert,
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
              tag: dessert.imgUrl,
              child: SizedBox(
                height: 140.0,
                width: 170.0,
                child: Image.network(
                  dessert.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              dessert.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
