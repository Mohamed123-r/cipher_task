import 'dart:ui';

class ItemModel {
  final String image;
  final String name;
  final num price;
  final Color color;
  final num size;

  const ItemModel( {required this.size, required this.price,
    required this.image,
    required this.name,
    required this.color,
  });
}
