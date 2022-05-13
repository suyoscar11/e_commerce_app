import 'package:e_commerce_app/Screens/Studio/Followers__db.dart/imageandnamecard.dart';
import 'package:e_commerce_app/Screens/Studio/Followers__db.dart/items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EverythingElse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final letitbex = Provider.of<FBItemsFather>(context);
    final variable = letitbex.items;

    return GridView.builder(
        physics: ScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (contxt, ind) => ChangeNotifierProvider.value(
              value: variable[ind],
              child: CardWala(
                  fbwaalasanoimg: variable[ind].smallfbimg,
                  fbname: variable[ind].shopname,
                  imgurl: variable[ind].fbimg,
                  description: variable[ind].description),
            ));
  }
}
