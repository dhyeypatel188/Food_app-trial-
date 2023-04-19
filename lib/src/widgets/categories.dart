import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/costomtext.dart';
import 'package:food_app/src/models/category.dart';
import '../commons.dart';
import 'package:flutter/cupertino.dart';

class Category {
  final String name;
  final String image;

  Category({required this.name, required this.image});
}

List<Category> categoriesList = [
  Category(name: 'Salad', image: 'sea-food.png'),
  Category(name: 'Steak', image: 'sea-food.png'),
  Category(name: 'Sea-food', image: 'sea-food.png'),
  Category(name: 'Ice-cream', image: 'sea-food.png'),
  Category(name: 'Fast-food', image: 'sea-food.png'),
  Category(name: 'Beer', image: 'sea-food.png'),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(children: <Widget>[
              Container(
                decoration: const BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(4, 5), blurRadius: 10)
                ]),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    "assets/${categoriesList[index].image}",
                    width: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: categoriesList[index].name,
                size: 14,
                color: black,
              ),
            ]),
          );
        },
      ),
    );
  }
}
