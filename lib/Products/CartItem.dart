import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../modals/Products.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productid;
  final double price;
  final int quantity;
  final String name;
  final Image img;

  CartItem(
      this.id, this.productid, this.price, this.quantity, this.name, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Padding(
              padding: const EdgeInsets.only(bottom: 340.0, left: 16),
              child: Image.network(
                'https://source.unsplash.com/user/c_v_r',
                fit: BoxFit.fill,
                width: 150,
                height: 150,
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
