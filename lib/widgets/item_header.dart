import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: item.color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          Text(
            item.name,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Text(
            "Price",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "\$${item.price.toString()}",
            style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
