import 'package:flutter/material.dart';
import 'package:food_recipe/helpers/constant.dart';

class UserProfile extends StatefulWidget {
  static String routeName = "userProfile";
  static Route<UserProfile> route() {
    return MaterialPageRoute<UserProfile>(
        settings: RouteSettings(name: routeName),
        builder: (BuildContext context) => const UserProfile());
  }

  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            Image.asset(
              "lib/assets/images/me.png",
              width: 100,
              height: 100,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Column(
                  children: const [
                    Text(
                      "Saleh Rashid",
                      style: TextStyle(
                          fontFamily: mainFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "saleh.rashid.b@gmail.com",
                      style: TextStyle(fontFamily: mainFont, fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
