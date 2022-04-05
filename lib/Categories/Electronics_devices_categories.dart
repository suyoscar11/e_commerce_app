import 'package:e_commerce_app/Categories/Electronics_devices_card.dart';
import 'package:flutter/material.dart';

class ElectronicsDevicesCategories extends StatelessWidget {
  const ElectronicsDevicesCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: <Widget>[
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
        ElectronicsDevicesCard(
            Image.asset(
              'assets/categories/Electronics Devices/voice.JPG',
              height: 90,
              width: 80,
            ),
            'Accessories'),
      ],
    );
  }
}
