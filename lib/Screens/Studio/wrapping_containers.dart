import 'package:e_commerce_app/Screens/Studio/suruko_containers.dart';
import 'package:flutter/material.dart';

class WrappingContainers extends StatelessWidget {
  const WrappingContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StudioContainersCard(
              Image.asset(
                'assets/images/child1.jpg',
                fit: BoxFit.cover,
              ),
              'Lorem Ipsum dolor color etc vtc'),
          SizedBox(
            width: 20,
          ),
          StudioContainersCard(
              Image.asset(
                'assets/images/products1.jpg',
                fit: BoxFit.cover,
              ),
              'Lorem Ipsum dolor color etc vtc'),
          SizedBox(
            width: 20,
          ),
          StudioContainersCard(
              Image.asset(
                'assets/images/child1.jpg',
                fit: BoxFit.cover,
              ),
              'Lorem Ipsum dolor color etc vtc'),
          SizedBox(
            width: 20,
          ),
          StudioContainersCard(
              Image.asset(
                'assets/images/products1.jpg',
                fit: BoxFit.contain,
              ),
              'Lorem Ipsum dolor color etc vtc'),
        ],
      ),
    );
  }
}
