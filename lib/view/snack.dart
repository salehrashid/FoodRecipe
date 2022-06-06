import 'package:flutter/material.dart';
import 'package:food_recipe/model/SnackData.dart';
import 'package:food_recipe/view/NavDrawer.dart';
import 'package:food_recipe/view/detail.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({Key? key}) : super(key: key);

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: List.generate(snackData.length, (index) {
            return Center(
              child: Cards(
                snack: snackData[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key, required this.snack}) : super(key: key);

  final SnackData snack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailSnackPage(snack: snack)));
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
            SizedBox(
              height: 140.0,
              width: 170.0,
              child: Image.network(
                snack.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              snack.name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
