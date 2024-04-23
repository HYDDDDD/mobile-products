import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {super.key,
      required this.image,
      required this.label,
      required this.price});

  final String image, label;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(label),
          Image.network(
            image,
            width: 40,
            height: 40,
          ),
          Text("$price บาท")
        ],
      ),
    );
  }
}
