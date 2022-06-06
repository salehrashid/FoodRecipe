import 'package:flutter/material.dart';
import 'package:food_recipe/model/LunchData.dart';
import 'package:food_recipe/view/detail.dart';
import 'package:food_recipe/view/NavDrawer.dart';

class LunchPage extends StatefulWidget {
  const LunchPage({Key? key}) : super(key: key);

  @override
  State<LunchPage> createState() => _LunchPageState();
}

class _LunchPageState extends State<LunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Lunch"),
        centerTitle: true,
      ),
      drawer: NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: List.generate(lunchData.length, (index) {
            return Center(
              child: Cards(
                lunch: lunchData[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key, required this.lunch}) : super(key: key);

  final LunchData lunch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailLunchPage(
                      lunch: lunch,
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
            Container(
              height: 140.0,
              width: 170.0,
              child: Image.network(
                lunch.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              lunch.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
