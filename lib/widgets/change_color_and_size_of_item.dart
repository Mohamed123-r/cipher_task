import 'package:flutter/material.dart';
import '../models/item_model.dart';
import 'change_color.dart';

class ChangeColorAndSizeOfItem extends StatelessWidget {
  const ChangeColorAndSizeOfItem({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5 - 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Color",
                style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              ChangeColor(item: item),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5 - 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Size",
                style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "${item.size.toString()} cm",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

