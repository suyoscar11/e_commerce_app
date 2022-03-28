import 'package:e_commerce_app/Screens/Homepage.dart';
import 'package:e_commerce_app/Screens/SplashScreen.dart';
import 'package:e_commerce_app/Screens/widgets/Categories.dart';
import 'package:e_commerce_app/modals/Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Products())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Categories(),
      ),
    );
  }
}
