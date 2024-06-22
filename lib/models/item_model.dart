import 'dart:ui';

class ItemModel {
  final String image;
  final String name;
  final num price;
  final Color color;

  const ItemModel( {required this.price,
    required this.image,
    required this.name,
    required this.color,
  });
}
