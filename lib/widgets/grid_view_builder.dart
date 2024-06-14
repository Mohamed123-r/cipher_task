import 'package:flutter/material.dart';

import '../models/item_model.dart';
import 'catagory_item.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});
  final List<ItemModel> items = const [
    ItemModel(
        image: 'assets/images/bag_1.png',
        name: 'Office Code ',
        color: Color(0xff4481B0)),
    ItemModel(
        image: 'assets/images/bag_2.png',
        name: 'Belt Bag',
        color: Color(0xffD3A983)),
    ItemModel(
        image: 'assets/images/bag_3.png',
        name: 'Hang Top ',
        color: Color(0xff999393)),
    ItemModel(
        image: 'assets/images/bag_4.png',
        name: 'Old Fashion',
        color: Color(0xffE5B39A)),
    ItemModel(
        image: 'assets/images/bag_5.png',
        name: 'Leather',
        color: Color(0xffF77C81)),
    ItemModel(
        image: 'assets/images/bag_6.png',
        name: 'Wool',
        color: Color(0xffAEAEB0)),
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) => Category_item(items: items[index]),
    );
  }
}
