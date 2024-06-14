import 'package:cipher_task/models/item_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.items,
  });

  final ItemModel items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 200,
          child: Card(
            color: items.color,
            child: Image.asset(
              items.image,
            ),
          ),
        ),
        Text(
          items.name,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Text(
          '\$234',
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
