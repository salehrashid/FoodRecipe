import 'package:flutter/material.dart';
import 'package:food_recipe/helpers/constant.dart';
import 'package:food_recipe/view/widget/nav_drawer.dart';

class PrivacyPolicy extends StatefulWidget {
  static String routeName = "setting";
  static Route<PrivacyPolicy> route() {
    return MaterialPageRoute<PrivacyPolicy>(
        settings: RouteSettings(name: routeName),
        builder: (BuildContext context) => const PrivacyPolicy());
  }

  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy & policy"),
        centerTitle: true,
      ),
      drawer: const NavDrawer(),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
              child: Text(
                "This privacy policy sets out how \"My Kithcen\" uses and protects any information that you give \"My kithcen\" when you use this app.\n\n\"My Kithcen\" is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this app, then you can be assured that it will only be used in accordance with this policy statement.\n\n\"My Kithcen\" may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from July, 15 2022",
                style: TextStyle(fontFamily: mainFont, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CheckboxListTile(
                  title: const Text(
                    "Terms & condition",
                    style: TextStyle(
                        fontFamily: mainFont, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "By checking this box, you agree to our privacy and policy",
                    style: TextStyle(fontFamily: mainFont),
                  ),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() => isChecked = value!);
                  }),
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
