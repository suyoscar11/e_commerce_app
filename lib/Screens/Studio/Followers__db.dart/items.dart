import 'package:flutter/material.dart';

class FBItems with ChangeNotifier {
  final String shopname;
  final String fbimg;
  final String smallfbimg;
  final String description;
  FBItems({
    required this.shopname,
    required this.fbimg,
    required this.smallfbimg,
    required this.description,
  });
}

class FBItemsFather with ChangeNotifier {
  final List<FBItems> _items = [
    FBItems(
        shopname: 'FreeSoul',
        fbimg: 'https://bit.ly/3LPOanP',
        smallfbimg: 'https://bit.ly/3LPOanP',
        description: 'Lorem Picsum,'),
    FBItems(
        shopname: 'FreeSoul',
        fbimg: 'https://bit.ly/3LPOanP',
        smallfbimg: 'https://bit.ly/3LPOanP',
        description: 'Lorem Picsum,'),
    FBItems(
        shopname: 'FreeSoul',
        fbimg: 'https://bit.ly/3LPOanP',
        smallfbimg: 'https://bit.ly/3LPOanP',
        description: 'Lorem Picsum,'),
    FBItems(
        shopname: 'FreeSoul',
        fbimg: 'https://bit.ly/3LPOanP',
        smallfbimg: 'https://bit.ly/3LPOanP',
        description: 'Lorem Picsum,'),
    FBItems(
        shopname: 'FreeSoul',
        fbimg: 'https://bit.ly/3LPOanP',
        smallfbimg: 'https://bit.ly/3LPOanP',
        description: 'Lorem Picsum,'),
    FBItems(
        shopname: 'FreeSoul',
        fbimg: 'https://bit.ly/3LPOanP',
        smallfbimg: 'https://bit.ly/3LPOanP',
        description: 'Lorem Picsum,'),
  ];
  List<FBItems> get items {
    return [..._items];
  }
}
