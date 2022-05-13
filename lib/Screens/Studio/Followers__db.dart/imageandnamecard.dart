import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWala extends StatelessWidget {
  final String fbwaalasanoimg;
  final String fbname;
  final String imgurl;

  final String description;
  CardWala(
      {required this.fbwaalasanoimg,
      required this.fbname,
      required this.imgurl,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                //mero photo
                CircleAvatar(
                  radius: 5,
                  child: Image.network(fbwaalasanoimg),
                ),
                SizedBox(
                  width: 11,
                ),
                // Suyog Gaire
                Text(fbname),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Follow',
                  style: GoogleFonts.poppins(color: Colors.pink),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
              imgurl,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.favorite_sharp),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.share),
                SizedBox(
                  width: 70,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.flag_rounded)),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}
