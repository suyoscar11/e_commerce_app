import 'package:e_commerce_app/Screens/LoginPage.dart';
import 'package:e_commerce_app/Products/home_body.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
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
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (customIcon.icon == Icons.search) {
                      customIcon = const Icon(Icons.cancel);
                      customSearchBar = const ListTile(
                        leading: Icon(
                          Icons.search,
                          size: 24,
                          color: Colors.grey,
                        ),
                        title: TextField(
                            decoration: InputDecoration(
                          hintText: 'What are you looking for?',
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 241, 235, 235),
                              fontWeight: FontWeight.w600),
                        )),
                      );
                    } else {
                      customIcon == Icons.search;
                      customSearchBar == const Text('Search');
                    }
                    ;
                  });
                },
                icon: customIcon),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.category)),
                  label: 'Category'),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.shopping_bag)),
                  label: 'Offers'),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.shopping_basket)),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()));
                      },
                      icon: const Icon(
                        Icons.account_box,
                      )),
                  label: 'Me'),
            ]),
        body: HomeBody());
  }
}
