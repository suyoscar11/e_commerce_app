import 'package:e_commerce_app/Products/Detail_page.dart';
import 'package:e_commerce_app/modals/Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  ProductItem({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
