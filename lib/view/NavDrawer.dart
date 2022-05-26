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
        child: Image.asset("lib/image/thumb.png"),
      );

  Widget buildMenu(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const ImageIcon(AssetImage("lib/image/home.png")),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, "/");
                }),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/image/beverage.png")),
              title: const Text("Beverage"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/beverages");
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/image/dessert.png")),
              title: const Text("Dessert"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/dessert");
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/image/lunch.png")),
              title: const Text("Lunch"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/lunch");
              },
            ),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/image/snack.png")),
              title: const Text("Snack"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/snack");
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const ImageIcon(AssetImage("lib/image/setting.png")),
              title: const Text("Setting"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, "/setting");
              },
            )
          ],
        ),
      );
}
