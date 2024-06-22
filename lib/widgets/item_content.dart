import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/item_model.dart';

class ItemContent extends StatelessWidget {
  const ItemContent({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.31),
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
            Row(
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
                      Row(
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
                          const CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
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
                          )
                        ],
                      ),
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
            ),
            Padding(
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
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.remove),
                    color: Colors.grey[700],
                    iconSize: 22,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "02",
                    style: TextStyle(
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
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    color: Colors.grey[700],
                    iconSize: 22,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                    color: Colors.white,
                    iconSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon:  Icon(Icons.add_shopping_cart,
                    color: item.color,),
                    color: Colors.grey[700],
                    iconSize: 35,
                  ),
                ),
                MaterialButton(
                  height: 60,
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: item.color,
                  onPressed: () {}, child: const Text("BUY NOW",
                style: TextStyle(color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
