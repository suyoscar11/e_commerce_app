import 'package:flutter/material.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Prabesh Bro..ho yo section ko UI milyaxaina yaar
    //Esso herdeu na
    return Row(
      children: [
        CategoriesCard(
            (Image.asset(
              'assets/icons/categoori.png',
              height: 70,
              width: 60,
            )),
            '       All \nCategories'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/Electronics.png',
              height: 70,
              width: 60,
            )),
            'Electronics \n    Devices'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/Mens.JPG',
              height: 70,
              width: 60,
            )),
            "   Men's \n Fashion"),
        CategoriesCard(
            (Image.asset(
              'assets/icons/womens.JPG',
              height: 70,
              width: 60,
            )),
            " Women's \n Fashion"),
        CategoriesCard(
            (Image.asset(
              'assets/icons/watch.JPG',
              height: 70,
              width: 60,
            )),
            '    Watch & \n   Accessories'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/abc.JPG',
              height: 70,
              width: 60,
            )),
            '  Home & \n   Lifestyle'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/health.JPG',
              height: 70,
              width: 60,
            )),
            '  Health & \n   Beauty'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/books.JPG',
              height: 70,
              width: 60,
            )),
            '  Books & \n Music'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/gifts.JPG',
              height: 70,
              width: 60,
            )),
            '  Gifts & \n  Cakes'),
        CategoriesCard(
            (Image.asset(
              'assets/icons/groceries.JPG',
              height: 70,
              width: 60,
            )),
            '  Groceries & \n   Supplies'),
      ],
    );
  }
}
