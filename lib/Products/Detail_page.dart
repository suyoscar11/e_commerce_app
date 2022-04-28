import 'package:e_commerce_app/Screens/cart_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../modals/Products.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final customIcon = Icon(Icons.search);
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 15),
        color: Colors.white.withOpacity(1),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Column(children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.redAccent,
                  ))
            ]),
            SizedBox(
              width: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                  ),
                  SizedBox(width: 2),
                  Text(
                    'BUY NOW',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
            SizedBox(
              width: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CartScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 2),
                  Text(
                    'ADD TO CART',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.withOpacity(1))),
            ),
          ],
        ),
      ),
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
          Column(children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
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
              child: Image.network(loadedPdt.imageUrl),
            ),
            SizedBox(
              height: 13,
            ), // yo chai tyo sano image rakhni wala container ho
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
            ),
            SizedBox(
              height: 20,
            ),
            // Yaha bata chai tyo name wala container suru hunxa..
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 650,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.symmetric(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 20),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Text(
                      '${loadedPdt.name}',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('decorative',
                                    style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blueAccent),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(17)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: const BorderSide(
                                                color: Colors.blue))))),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('decorative',
                                    style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blueAccent),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(17)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: const BorderSide(
                                                color: Colors.blue)))))
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                            '  ________________________________________________________',
                            style: TextStyle(
                                color: Colors.brown.withOpacity(0.2))),
                        Padding(padding: EdgeInsets.only(top: 30, left: 14)),
                        Row(
                          children: [
                            Text('Rs.  ${loadedPdt.price}',
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Rs.33000 ',
                              style: TextStyle(
                                  fontSize: 18,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                            Text('/ Piece ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(
                              width: 15,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('View More',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal)),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(15)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            side: BorderSide(
                                                color: Colors.red)))))
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('In Stock',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(15)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        side:
                                            BorderSide(color: Colors.green))))),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                            '  __________________________________________________________________',
                            style: TextStyle(
                                color: Colors.brown.withOpacity(0.2))),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          '   Quantity',
                          style: GoogleFonts.poppins(fontSize: 24),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
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
                                        MaterialStateProperty.all(Colors.white),
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
                                        MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(10)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(70.0),
                                            side: BorderSide(
                                                color: Colors.red))))),
                            SizedBox(width: 70),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.heart_broken_rounded,
                                  color: Colors.red,
                                  size: 30,
                                )),
                            SizedBox(
                              width: 0,
                            ),
                            Text('Wishlist',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                            '  __________________________________________________________________',
                            style: TextStyle(
                                color: Colors.brown.withOpacity(0.2))),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/Nirvana.png',
                              height: 100,
                              width: 80,
                            ),
                            Column(
                              children: [
                                Text('Active eCommerce Refund Protection*',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18, color: Colors.grey)),
                                Text('10 Days Cash Back Gurantee',
                                    style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
          // Yaha Customers protection sakkera next container start hunxa..
          SizedBox(height: 35),
          // This is the Seller Details wala container
          // Still incomplete xa..feri aauchu esma
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text(
                    '    Seller Details',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.local_mall,
                          size: 28,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Sold by',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Nincane Furnitures',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18),

                                // navigate to desired screen
                              )
                            ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
