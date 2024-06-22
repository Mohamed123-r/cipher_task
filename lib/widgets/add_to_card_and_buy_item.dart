import 'package:flutter/material.dart';

import '../models/item_model.dart';

class AddToCardAndBuyItem extends StatelessWidget {
  const AddToCardAndBuyItem({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: item.color,
            ),
            color: Colors.grey[700],
            iconSize: 35,
          ),
        ),
        MaterialButton(
          height: 60,
          minWidth: MediaQuery.of(context).size.width * 0.7,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          color: item.color,
          onPressed: () {},
          child: const Text(
            "BUY NOW",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
