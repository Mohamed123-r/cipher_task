import 'package:cipher_task/widgets/catagory_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';
import '../widgets/grid_view_builder.dart';

class WomenView extends StatelessWidget {
  const WomenView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Women',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const GridViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

