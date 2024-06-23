import 'package:cipher_task/widgets/specifies_number_of_item.dart';
import 'package:flutter/material.dart';
import '../models/item_model.dart';
import 'add_to_card_and_buy_item.dart';
import 'change_color_and_size_of_item.dart';
import 'description_item.dart';

class ItemContent extends StatelessWidget {
  const ItemContent({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.31),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 100, right: 16),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            ChangeColorAndSizeOfItem(item: item),
            const DescriptionItem(),
            const SpecifiesNumberOfItem(),
            const SizedBox(
              height: 16,
            ),
            AddToCardAndBuyItem(item: item),
          ],
        ),
      ),
    );
  }
}


