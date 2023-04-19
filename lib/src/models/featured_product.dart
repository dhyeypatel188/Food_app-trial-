import 'package:flutter/material.dart';
import 'package:food_app/src/commons.dart';
import 'package:food_app/src/models/products.dart';
import 'package:food_app/src/widgets/costomtext.dart';

List<Product> productsList = [
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFood",
      wishList: true,
      image: "1.png"),
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFood",
      wishList: true,
      image: "1.png"),
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFood",
      wishList: true,
      image: "1.png"),
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFood",
      wishList: true,
      image: "1.png")
];

class Featured extends StatelessWidget {
  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 200,
                decoration: const BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/${productsList[index].image}",
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText(text: productsList[index].name!),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: grey,
                                      offset: Offset(15, 5),
                                      blurRadius: 30)
                                ]),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: productsList[index].wishList!
                                  ? const Icon(Icons.favorite,
                                      size: 18, color: red)
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 18,
                                      color: red,
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                color: grey,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: grey, size: 16),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: CustomText(
                            text: "\$${productsList[index].price}",
                            weight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
