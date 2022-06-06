import 'package:flutter/material.dart';

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
        child: Image.asset("lib/images/thumb.png"),
      );

  Widget buildMenu(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const ImageIcon(AssetImage("lib/vector/home.png")),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, "/");
                }),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/vector/beverage.png")),
              title: const Text("Beverage",
                  style: TextStyle(
                      fontFamily: "OpenSans", fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/beverages");
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/vector/dessert.png")),
              title: const Text(
                "Dessert",
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/dessert");
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/vector/lunch.png")),
              title: const Text(
                "Lunch",
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/lunch");
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/vector/snack.png")),
              title: const Text(
                "Snack",
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/snack");
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/vector/setting.png")),
              title: const Text(
                "Setting",
                style: TextStyle(
                    fontFamily: "OpenSans", fontWeight: FontWeight.bold),
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
