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
            width: 30,
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
                      '    Shopping Cart',
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
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 20),
                    ],
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          width: 20,
                          child: Image.asset(
                            'assets/images/products1.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                'Fathers Day huge Day Sale. Happening all across the country.  ',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Seller:',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent)),
                            SizedBox(
                              height: 15,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs 850',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: 24,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Expanded(
                              child: Text(
                                'Total: Rs 1700',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('-',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70.0),
                                              side: BorderSide(
                                                  color: Colors.red))))),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('+',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70.0),
                                              side: BorderSide(
                                                  color: Colors.red))))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 20),
                    ],
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          width: 20,
                          child: Image.asset(
                            'assets/images/20off.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                'Fathers Day huge Day Sale. Happening all across the country.  ',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Seller:',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent)),
                            SizedBox(
                              height: 15,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs 1700',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: 24,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Expanded(
                              child: Text(
                                'Total: Rs 1700',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('-',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70.0),
                                              side: BorderSide(
                                                  color: Colors.red))))),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('+',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70.0),
                                              side: BorderSide(
                                                  color: Colors.red))))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 20),
                    ],
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          width: 20,
                          child: Image.asset(
                            'assets/images/products1.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                'Fathers Day huge Day Sale. Happening all across the country.  ',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Seller:',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent)),
                            SizedBox(
                              height: 15,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs 850',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: 24,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Expanded(
                              child: Text(
                                'Total: Rs 1700',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('-',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70.0),
                                              side: BorderSide(
                                                  color: Colors.red))))),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('+',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70.0),
                                              side: BorderSide(
                                                  color: Colors.red))))),
                            ],
                          ),
                        ),
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
