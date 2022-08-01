import 'package:flutter/material.dart';
import 'package:food_recipe/model/lunch_data.dart';
import 'package:food_recipe/view/detail.dart';
import 'package:food_recipe/view/widget/nav_drawer.dart';

class LunchPage extends StatelessWidget {
  static String routeName = "desPage";
  static Route<LunchPage> route() {
    return MaterialPageRoute<LunchPage>(
        settings: RouteSettings(name: routeName),
        builder: (BuildContext context) => const LunchPage());
  }

  const LunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Lunch"),
        centerTitle: true,
      ),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
<<<<<<< HEAD
          children: List.generate(
            lunchData.length,
            (index) {
              return Center(
                child: Cards(
                  lunch: lunchData[index],
                ),
              );
            },
          ),
=======
          children: List.generate(lunchData.length, (index) {
            return Center(
              child: Cards(
                lunch: lunchData[index],
              ),
            );
          }),
>>>>>>> 9945dadca8e5c8798e2e0db5c165d0c215ee3818
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
<<<<<<< HEAD
          context,
          MaterialPageRoute(
            builder: (context) => DetailLunchPage(
              lunch: lunch,
            ),
          ),
        );
=======
            context,
            MaterialPageRoute(
                builder: (context) => DetailLunchPage(
                      lunch: lunch,
                    )));
>>>>>>> 9945dadca8e5c8798e2e0db5c165d0c215ee3818
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
              height: 130.0,
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
<<<<<<< HEAD
            ),
=======
            )
>>>>>>> 9945dadca8e5c8798e2e0db5c165d0c215ee3818
          ],
        ),
      ),
    );
  }
}
