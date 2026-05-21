import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  final String title;

  const CircleItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://picsum.photos/100'),
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}