import 'package:e_commerce_app/Screens/widgets/Categories.dart';
import 'package:e_commerce_app/Products/all_products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/Nirvana.png',
                fit: BoxFit.contain,
              ),
              padding: EdgeInsets.all(70),
              color: Colors.black38,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Categories(),
        const SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.symmetric(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 20),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Icon(
                    Icons.alarm,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                  Padding(padding: EdgeInsets.only(left: 35)),
                  Text('Weekly Deals',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.only(left: 80)),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('View More',
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.normal)),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))))
                ],
              ),
              AllProducts(),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.symmetric(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 20),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Icon(
                    Icons.alarm,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                  Padding(padding: EdgeInsets.only(left: 35)),
                  Text('Trending Now',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.only(left: 80)),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('View More',
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.normal)),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))))
                ],
              ),
              AllProducts(),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.symmetric(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 20),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Icon(
                    Icons.alarm,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                  Padding(padding: EdgeInsets.only(left: 35)),
                  Text('Just for you',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.only(left: 80)),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('View More',
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.normal)),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))))
                ],
              ),
              AllProducts(),
            ],
          ),
        )
      ],
    );
  }
}
