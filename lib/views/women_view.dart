import 'package:flutter/material.dart';
import '../widgets/woman_view_body.dart';

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
      body:const WomanViewBody() ,
    );
  }
}

