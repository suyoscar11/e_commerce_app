import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  Product({
    required this.id,
    required this.category,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: '1',
        category: 'Business',
        name: 'MamaEarth Awesome Orange Toothpaste ',
        description: 'Lorem Ipsum',
        imageUrl: 'https://source.unsplash.com/user/c_v_r',
        price: 28000),
    Product(
        id: '1',
        category: 'Business',
        name: 'Top Sales',
        description: 'Lorem Ipsum',
        imageUrl: 'https://picsum.photos/200/300',
        price: 2),
    Product(
        id: '1',
        category: 'Business',
        name: 'Top Sales',
        description: 'Lorem Ipsum',
        imageUrl:
            'https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
        price: 2),
    Product(
        id: '1',
        category: 'Business',
        name:
            'jhhvhvhvhllmanjabjcbsdjjksdahjgsdsjkbvhjsvbsdjvhjsvjasdbhjsdjkcbhjsvvhbjvsbdhvbjsadvhs ',
        description: 'Lorem Ipsum',
        imageUrl: 'https://source.unsplash.com/user/c_v_r',
        price: 28000),
    Product(
        id: '1',
        category: 'Business',
        name: 'Top Sales',
        description: 'Lorem Ipsum',
        imageUrl: 'https://picsum.photos/200/300',
        price: 2),
    Product(
        id: '1',
        category: 'Business',
        name: 'Top Sales',
        description: 'Lorem Ipsum',
        imageUrl:
            'https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
        price: 2),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
