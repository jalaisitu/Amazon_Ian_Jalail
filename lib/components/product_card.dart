import 'package:flutter/material.dart';
import '../constants.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String link;

  const ProductCard({super.key, required this.title, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Image.network(
              'https://picsum.photos/seed/${title.hashCode.abs()}/300/200',
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                child: const Icon(Icons.image, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            link,
            style: const TextStyle(
              color: AppColors.linkBlue,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
