import 'package:e_commerce_app/Categories/Electronics_devices_categories.dart';
import 'package:flutter/material.dart';
import 'category_card.dart';

class CategoriesBB extends StatelessWidget {
  const CategoriesBB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Expanded(
            child: Wrap(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/categoori.png',
                            height: 70,
                            width: 60,
                          )),
                          '       All \nCategories'),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      ElectronicsDevicesCategories()));
                        },
                        child: CategoriesCard(
                            (Image.asset(
                              'assets/icons/Electronics.png',
                              height: 70,
                              width: 60,
                            )),
                            'Electronics \n    Devices')),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      ElectronicsDevicesCategories()));
                        },
                        child: CategoriesCard(
                            (Image.asset(
                              'assets/icons/Mens.JPG',
                              height: 70,
                              width: 60,
                            )),
                            "   Men's \n Fashion")),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/womens.JPG',
                            height: 70,
                            width: 60,
                          )),
                          " Women's \n Fashion"),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/watch.JPG',
                            height: 70,
                            width: 60,
                          )),
                          '    Watch & \n   Accessories'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/abc.JPG',
                            height: 70,
                            width: 60,
                          )),
                          '  Home & \n   Lifestyle'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/health.JPG',
                            height: 70,
                            width: 60,
                          )),
                          '  Health & \n   Beauty'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/books.JPG',
                            height: 70,
                            width: 60,
                          )),
                          '  Books & \n Music'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/gifts.JPG',
                            height: 70,
                            width: 60,
                          )),
                          '  Gifts & \n  Cakes'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoriesCard(
                          (Image.asset(
                            'assets/icons/groceries.JPG',
                            height: 70,
                            width: 60,
                          )),
                          '  Groceries & \n   Supplies'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
