import 'package:e_commerce_app/Categories/Electronics_devices_categories.dart';
import 'package:e_commerce_app/Screens/widgets/Categories_for_bottombar.dart';
import 'package:flutter/material.dart';

class CategoriesBottomBar extends StatefulWidget {
  const CategoriesBottomBar({Key? key}) : super(key: key);

  @override
  State<CategoriesBottomBar> createState() => _CategoriesBottomBarState();
}

class _CategoriesBottomBarState extends State<CategoriesBottomBar> {
  final customIcon = Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(
            'assets/images/logo.jpg',
            height: 250,
            width: 120,
          ),
          const SizedBox(
            width: 120,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xfffffffff),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                hintText: 'Search Products..',
                hintStyle: const TextStyle(fontSize: 15),
                suffixIcon: customIcon,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                        width: 2, color: Color.fromARGB(26, 204, 32, 32)))),
          ))
        ]),
      ),
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
                height: 1500,
                width: 110,
                color: Colors.grey.withOpacity(0.2),
                child: CategoriesBB()),
          ),
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height,
            width: 290,
            child: const ElectronicsDevicesCategories(),
          )
        ],
      ),
    );
  }
}
