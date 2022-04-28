import 'package:e_commerce_app/Products/Detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../modals/Products.dart';

class CartScreen extends StatelessWidget {
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
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.symmetric(),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 20),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      'Shopping Cart',
                      style: GoogleFonts.poppins(fontSize: 28),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DetailPage()));
                        },
                        child: Text('1 Items',
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.normal)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    side: BorderSide(color: Colors.green)))))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: 580,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 20),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/images/doormeet.png',
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
