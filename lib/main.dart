// @dart=2.9
import 'package:e_commerce_app/Categories/Electronics_devices_categories.dart';
import 'package:e_commerce_app/Just%20for%20Fun/homepage.dart';
import 'package:e_commerce_app/Products/Detail_page.dart';
import 'package:e_commerce_app/Products/home_body.dart';
import 'package:e_commerce_app/Screens/Studio/Studio.dart';
import 'package:e_commerce_app/Screens/Homepage.dart';
import 'package:e_commerce_app/Screens/LoginPage.dart';
import 'package:e_commerce_app/Screens/RegisterPage.dart';
import 'package:e_commerce_app/Screens/SplashScreen.dart';
import 'package:e_commerce_app/Screens/cart_screen.dart';
import 'package:e_commerce_app/Screens/widgets/Categories.dart';
import 'package:e_commerce_app/modals/Products.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Products())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
        routes: {DetailPage.routeName: (ctx) => DetailPage()},
      ),
    );
  }
}
