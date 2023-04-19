import 'package:flutter/material.dart';
import 'package:food_app/src/models/category.dart';
import 'package:food_app/src/models/featured_product.dart';
import 'package:food_app/src/widgets/bottom_nevigation_icons.dart';
import 'package:food_app/src/widgets/categories.dart';
import 'package:food_app/src/widgets/small_button.dart';

import '../commons.dart';
import '../widgets/costomtext.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What are you looking for?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none)),
                    Positioned(
                      top: 13,
                      left: 25,
                      child: Container(
                        child: const Text(
                          " 23",
                          style: TextStyle(fontSize: 8, color: white),
                        ),
                        height: 10,
                        width: 13.5,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find food and restaurent",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Categories(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: "feature",
                size: 20,
                color: grey,
              ),
            ),
            const Featured(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                size: 20,
                color: grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/food.jpg",
                      ),
                    ),
                  ),

                  //start
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(children: const <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 225, 170, 6),
                                ),
                              ),
                              Text("4.5")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),
                              ])),
                    ),
                  )),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 20),
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "Pancacks \n",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: white)),
                              TextSpan(
                                  text: "by: ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: grey)),
                              TextSpan(
                                  text: "Pizza hut ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: white)),
                            ], style: TextStyle(color: black)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "\$12.99 \n",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: white))
                          ], style: TextStyle(color: black))),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),

            //end
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 70,
          color: white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              BottomNavIcon(
                image: "home.png",
                name: "Home",
              ),
              BottomNavIcon(
                image: "target.png",
                name: "Near by",
              ),
              BottomNavIcon(
                image: "shoping-bag.png",
                name: "Cart",
              ),
              BottomNavIcon(
                image: "person.png",
                name: "Account",
              ),
            ],
          )),
    );
  }
}
