import 'package:e_commerce_app/Screens/Studio/Followers__db.dart/everythingcompiledaftercard.dart';
import 'package:e_commerce_app/Screens/Studio/suruko_containers.dart';
import 'package:e_commerce_app/Screens/Studio/wrapping_containers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Studio extends StatefulWidget {
  const Studio({Key? key}) : super(key: key);

  @override
  State<Studio> createState() => _StudioState();
}

class _StudioState extends State<Studio> {
  final customIcon = Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
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
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
            color: Colors.white, height: 250, child: WrappingContainers()),
        SizedBox(height: 20),
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text(
                  'Top Brands on Studio',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/child1.jpg',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),

// Trending Brands On Studio

        SizedBox(height: 20),
        Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180.0),
                  child: Text(
                    'Trending Brands on Studio',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/products1.jpg',
                  fit: BoxFit.contain,
                ),
              ],
            )),

        SizedBox(
          height: 10,
        ),
        EverythingElse()
      ])),
    );
  }
}
