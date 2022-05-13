import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudioContainersCard extends StatelessWidget {
  final Image img;
  final String name;
  StudioContainersCard(this.img, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Container(
              height: 250,
              width: 200,
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      img,
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        name,
                        style: GoogleFonts.poppins(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
