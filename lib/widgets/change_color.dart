import 'package:flutter/material.dart';

import '../models/item_model.dart';



class ChangeColor extends StatelessWidget {
  final ItemModel item;

  const ChangeColor({super.key, required this.item});
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        CircleAvatar(
          radius: 14,
          backgroundColor: item.color,
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: item.color,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: Colors.white,
          child: const CircleAvatar(
            radius: 10,
            backgroundColor: Colors.yellow,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const CircleAvatar(
          radius: 12,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
