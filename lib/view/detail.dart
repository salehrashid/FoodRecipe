import 'package:flutter/material.dart';
import 'package:food_recipe/model/BeveragesData.dart';
import 'package:food_recipe/model/DessertData.dart';
import 'package:food_recipe/model/LunchData.dart';
import 'package:food_recipe/model/SnackData.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

//Beverage detail
class DetailBevPage extends StatelessWidget {
  final BeveragesData beverages;

  const DetailBevPage({Key? key, required this.beverages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: size.height * 0.9,
        minHeight: size.height * 0.5,
        //untuk background gelap saat sliding up
        backdropEnabled: true,
        //untuk menaikan image saat sliding up
        parallaxEnabled: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Hero(
              tag: beverages.imgUrl,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Image.network(
                    beverages.imgUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //nama minuman
                  Text(
                    beverages.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),

                  //deskripsi minuman
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      beverages.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      beverages.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      beverages.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 1
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      beverages.titleBahan2,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 2
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      beverages.bahan2,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title bahan 3
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      beverages.titleBahan3,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //bahan 3
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      beverages.bahan3,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  //title cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Text(
                      beverages.titleCara,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //cara
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      beverages.cara,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}

//Dessert detail
class DetailDesPage extends StatelessWidget {
  final DessertData dessert;

  const DetailDesPage({Key? key, required this.dessert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: size.height * 0.9,
        minHeight: size.height * 0.4,
        backdropEnabled: true,
        parallaxEnabled: true,
        body: Hero(
          tag: dessert.imgUrl,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 350),
              child: Image.network(
                dessert.imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dessert.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      dessert.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      dessert.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      dessert.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}

//Lunch detail
class DetailLunchPage extends StatelessWidget {
  final LunchData lunch;

  const DetailLunchPage({Key? key, required this.lunch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: size.height * 0.9,
        minHeight: size.height * 0.4,
        backdropEnabled: true,
        parallaxEnabled: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Image.network(
              lunch.imgUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lunch.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      lunch.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      lunch.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      lunch.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}

//Snack detail
class DetailSnackPage extends StatelessWidget {
  final SnackData snack;

  const DetailSnackPage({Key? key, required this.snack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: size.height * 0.9,
        minHeight: size.height * 0.4,
        backdropEnabled: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 350),
            child: Image.network(
              snack.imgUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    snack.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      snack.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Text(
                      snack.titleBahan1,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      snack.bahan1,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}
