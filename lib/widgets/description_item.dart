import 'package:flutter/material.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit and more'
            ' Lorem ipsum dolor sit amet, consectetur adipiscing elit and more'
            ' Lorem ipsum dolor sit amet, consectetur adipiscing elit and more',
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

