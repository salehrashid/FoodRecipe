import 'package:flutter/material.dart';
import 'package:food_recipe/model/BeveragesData.dart';
import 'package:food_recipe/view/NavDrawer.dart';
import 'package:food_recipe/view/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Food Recipe"),
          backgroundColor: Colors.deepPurple),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "There is a lot\nof recipe",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Beverages",
                style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                height: 500,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: beveragesData.length,
                    itemBuilder: (BuildContext context, index) {
                      return BeveragesMainList(
                        beverages: beveragesData[index],
                      );
                    }))
          ],
        ),
      ));
}

class BeveragesMainList extends StatelessWidget {
  const BeveragesMainList({Key? key, required this.beverages})
      : super(key: key);

  final BeveragesData beverages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailBevPage(beverages: beverages)));
        },
        child: SizedBox(
          height: 200,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Hero(
                tag: beverages.imgUrl,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Image.network(
                      beverages.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
