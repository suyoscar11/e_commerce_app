import 'package:e_commerce_app/Categories/Electronics_devices_card.dart';
import 'package:flutter/material.dart';

class ElectronicsDevicesCategories extends StatelessWidget {
  const ElectronicsDevicesCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        crossAxisCount: 2,
        primary: false,
        mainAxisSpacing: 2,
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
                'assets/categories/Electronics Devices/gaming.JPG',
                height: 90,
                width: 80,
              ),
              'Gaming'),
          ElectronicsDevicesCard(
              Image.asset(
                'assets/categories/Electronics Devices/camera.JPG',
                height: 90,
                width: 80,
              ),
              'Cameras'),
          ElectronicsDevicesCard(
              Image.asset(
                'assets/categories/Electronics Devices/mobiles.JPG',
                height: 90,
                width: 80,
              ),
              'Mobiles'),
          ElectronicsDevicesCard(
              Image.asset(
                'assets/categories/Electronics Devices/printers.JPG',
                height: 90,
                width: 80,
              ),
              'Printers'),
          ElectronicsDevicesCard(
              Image.asset(
                'assets/categories/Electronics Devices/projectors.JPG',
                height: 90,
                width: 80,
              ),
              'Projectors'),
          ElectronicsDevicesCard(
              Image.asset(
                'assets/categories/Electronics Devices/security.JPG',
                height: 90,
                width: 80,
              ),
              'Security'),
          ElectronicsDevicesCard(
              Image.asset(
                'assets/categories/Electronics Devices/tv.JPG',
                height: 90,
                width: 80,
              ),
              'Television'),
        ],
      ),
    );
  }
}
