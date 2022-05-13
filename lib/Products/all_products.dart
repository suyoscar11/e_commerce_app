import 'package:e_commerce_app/Products/products_items_card.dart';
import 'package:e_commerce_app/modals/Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;

    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: pdts.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: pdts[i],
            child: ProductItemCard(
              name: pdts[i].name,
              imageUrl: pdts[i].imageUrl,
            )));
  }
}
