import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectronicsDevicesCard extends StatelessWidget {
  final Image icon;
  final String name;
  ElectronicsDevicesCard(this.icon, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  icon,
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
