import 'package:flutter/material.dart';
import 'package:food_recipe/helpers/constant.dart';

class NavDrawer extends StatelessWidget {
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
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, "/");
                }),
            ListTile(
              leading: const ImageIcon(
                  AssetImage("lib/assets/vectors/beverage.png")),
              title: const Text("Beverage",
                  style: TextStyle(
                      fontFamily: Constant.mainFont,
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/beverages");
              },
            ),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/dessert.png")),
              title: const Text(
                "Dessert",
                style: TextStyle(
                    fontFamily: Constant.mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/dessert");
              },
            ),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/lunch.png")),
              title: const Text(
                "Lunch",
                style: TextStyle(
                    fontFamily: Constant.mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/lunch");
              },
            ),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/snack.png")),
              title: const Text(
                "Snack",
                style: TextStyle(
                    fontFamily: Constant.mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/snack");
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading:
                  const ImageIcon(AssetImage("lib/assets/vectors/setting.png")),
              title: const Text(
                "Setting",
                style: TextStyle(
                    fontFamily: Constant.mainFont, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/setting");
              },
            )
          ],
        ),
      );
}
