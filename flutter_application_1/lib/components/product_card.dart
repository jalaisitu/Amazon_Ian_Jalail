import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String link;

  const ProductCard({super.key, required this.title, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Image.network(
            'https://picsum.photos/200',
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(link, style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}