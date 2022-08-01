import 'package:flutter/material.dart';
import 'package:food_recipe/helpers/router.dart';
import 'package:food_recipe/model/beverages_data.dart';
import 'package:food_recipe/model/review_data.dart';
import 'package:food_recipe/view/user/user_profile.dart';
import 'package:food_recipe/view/widget/nav_drawer.dart';
import 'package:food_recipe/view/detail.dart';
import 'package:food_recipe/helpers/constant.dart';

class HomePage extends StatelessWidget {
  static String routeName = "homePage";
  static Route<HomePage> route() {
    return MaterialPageRoute<HomePage>(
      settings: RouteSettings(name: routeName),
      builder: (BuildContext context) => const HomePage(),
    );
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Food Recipe"),
            backgroundColor: Colors.deepPurple),
        drawer: const NavDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Hi Saleh",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: mainFont,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            NavRouter.instance.push(UserProfile.route());
                          },
                          child: Image.asset(
                            "lib/assets/images/me.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Ready to cook for dinner?",
                  style: TextStyle(fontFamily: mainFont, color: colorBlack),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: beveragesData.length,
                    itemBuilder: (BuildContext context, index) {
                      return BeveragesMainList(
                        beverages: beveragesData[index],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Reviews",
                  style: TextStyle(
                      fontFamily: mainFont,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                    itemCount: reviews.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return ReviwerList(
                        reviewData: reviews[index],
                      );
                    }),
              ],
            ),
          ),
        ),
      );
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
              builder: (context) => DetailBevPage(beverages: beverages),
            ),
          );
        },
        child: SizedBox(
          height: 200,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
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

class ReviwerList extends StatelessWidget {
  final ReviewData reviewData;

  const ReviwerList({Key? key, required this.reviewData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Card(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                reviewData.name,
                style: const TextStyle(
                    fontFamily: mainFont,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                reviewData.desc,
                style: const TextStyle(
                    fontFamily: mainFont,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
      ),
    );
  }
}
