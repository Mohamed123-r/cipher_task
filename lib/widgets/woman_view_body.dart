import 'package:flutter/material.dart';
import 'grid_view_builder.dart';

class WomanViewBody extends StatefulWidget {
  const WomanViewBody({super.key});

  @override
  State<WomanViewBody> createState() => _WomanViewBodyState();
}

class _WomanViewBodyState extends State<WomanViewBody> {
  bool isBags = true;
  Color textColor = Colors.grey[600]!;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Women',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  isBags = true;
                  setState(() {});
                },
                child: Text(
                  "Hand bad",
                  style: TextStyle(
                    color: isBags ? Colors.black : textColor,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  isBags = false;
                  setState(() {});
                },
                child: Text(
                  "Jewellery",
                  style: TextStyle(
                    color: isBags ? textColor : Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  isBags = false;
                  setState(() {});
                },
                child: Text(
                  "Footwear",
                  style: TextStyle(
                    color: isBags ? textColor : Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  isBags = false;
                  setState(() {});
                },
                child: Text(
                  "Dresses",
                  style: TextStyle(
                    color: isBags ? textColor : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        isBags
            ? const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: GridViewBuilder(),
                ),
              )
            : Center(
                child: Text(
                  "مفيش فلوس يا حلاوه مفيش فلوس ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
      ],
    );
  }
}
