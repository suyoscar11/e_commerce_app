import 'package:carousel_pro/carousel_pro.dart';
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
            SizedBox(
                height: 200.0,
                width: 350.0,
                child: Carousel(
                  images: [
                    AssetImage("assets/images/logo.jpg"),
                    AssetImage("assets/images/Nirvana.png"),
                    AssetImage("assets/images/shieldwithatick.png"),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Color.fromARGB(255, 246, 247, 246),
                  indicatorBgPadding: 5.0,
                  dotBgColor: Color.fromARGB(255, 72, 71, 71).withOpacity(0.5),
                  borderRadius: true,
                )),
          ],
        ),
        Container(
          child: Categories(),
          height: 135,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          //Weekly Deals
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 330,
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
                    Padding(padding: EdgeInsets.only(left: 30)),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('View More',
                            style: GoogleFonts.poppins(
                                fontSize: 11, fontWeight: FontWeight.normal)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(10)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: AllProducts(),
                  color: Colors.cyanAccent.withOpacity(0.2),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        //Ternding Now
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 330,
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
                  Padding(padding: EdgeInsets.only(left: 30)),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('View More',
                          style: GoogleFonts.poppins(
                              fontSize: 11, fontWeight: FontWeight.normal)),
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
              SizedBox(
                height: 5,
              ),
              Container(
                child: AllProducts(),
                color: Colors.cyanAccent.withOpacity(0.2),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        //Just For You
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 330,
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
                  Padding(padding: EdgeInsets.only(left: 35)),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('View More',
                          style: GoogleFonts.poppins(
                              fontSize: 11, fontWeight: FontWeight.normal)),
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
              SizedBox(
                height: 5,
              ),
              Container(
                child: AllProducts(),
                color: Colors.cyanAccent.withOpacity(0.2),
              ),
            ],
          ),
        )
      ],
    );
  }
}
