import 'package:flutter/material.dart';

class SpecifiesNumberOfItem extends StatefulWidget {
  const SpecifiesNumberOfItem({
    super.key,
  });

  @override
  State<SpecifiesNumberOfItem> createState() => _SpecifiesNumberOfItemState();
}

class _SpecifiesNumberOfItemState extends State<SpecifiesNumberOfItem> {
  int number = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (number > 1) {
                setState(() {
                  number--;
                });
              }
            },
            icon: const Icon(Icons.remove),
            color: Colors.grey[700],
            iconSize: 22,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "$number",
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                number++;
              });
            },
            icon: const Icon(Icons.add),
            color: Colors.grey[700],
            iconSize: 22,
          ),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: isFavorite ? Colors.red : Colors.grey[700],
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: const Icon(Icons.favorite),
            color: Colors.white,
            iconSize: 22,
          ),
        )
      ],
    );
  }
}
