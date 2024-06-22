import 'package:flutter/material.dart';

import '../models/item_model.dart';
import 'item_content.dart';
import 'item_header.dart';

class ItemViewBody extends StatelessWidget {
  const ItemViewBody({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ItemHeader(item: item),
        ItemContent(item: item),
        Positioned(
          top: 110,
          left: 130,
          child: Image.asset(
            width: 250,
            height: 250,
            item.image,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
