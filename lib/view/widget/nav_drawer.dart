import 'package:flutter/material.dart';
import 'package:food_recipe/helpers/constant.dart';
import 'package:food_recipe/helpers/router.dart';
import 'package:food_recipe/view/beverage.dart';
import 'package:food_recipe/view/dessert.dart';
import 'package:food_recipe/view/lunch.dart';
import 'package:food_recipe/view/main/home.dart';
import 'package:food_recipe/view/privacy_policy.dart';
import 'package:food_recipe/view/snack.dart';

class NavDrawer extends StatelessWidget {
  static String routeName = "navDrawer";
  static Route<NavDrawer> route() {
    return MaterialPageRoute<NavDrawer>(
        settings: RouteSettings(name: routeName),
        builder: (BuildContext context) => const NavDrawer());
  }

  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenu(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.blue,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Image.asset("lib/assets/images/thumb.png"),
      );

  Widget buildMenu(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading:
                    const ImageIcon(AssetImage("lib/assets/vectors/home.png")),
                title: const Text("Home"),
                onTap: () {
                  NavRouter.instance.pushReplacement(HomePage.route());
                }),
            ListTile(
              leading: const ImageIcon(
                  AssetImage("lib/assets/vectors/beverage.png")),
              title: const Text("Beverage",
                  style: TextStyle(
                      fontFamily: mainFont, fontWeight: FontWeight.bold)),
              onTap: () {
                NavRouter.instance.pushReplacement(BevPage.route());
              },
            ),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/dessert.png")),
              title: const Text(
                "Dessert",
                style: TextStyle(
                    fontFamily: mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                NavRouter.instance.pushReplacement(DesPage.route());
              },
            ),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/lunch.png")),
              title: const Text(
                "Lunch",
                style: TextStyle(
                    fontFamily: mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                NavRouter.instance.pushReplacement(LunchPage.route());
              },
            ),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/snack.png")),
              title: const Text(
                "Snack",
                style: TextStyle(
                    fontFamily: mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                NavRouter.instance.pushReplacement(SnackPage.route());
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: const Text(
                "Privacy policy",
                style: TextStyle(
                    fontFamily: mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                NavRouter.instance.pushReplacement(PrivacyPolicy.route());
              },
            )
          ],
        ),
      );
}
