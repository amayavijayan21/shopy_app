import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image, title, description, price, originalPrice, discount;
  final double rating;
  final int reviewCount;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(image, height: 130,width: double.infinity, fit: BoxFit.fill),
          ),
          const SizedBox(height: 8),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text(description, style: const TextStyle(fontSize: 12), maxLines: 2),
              const SizedBox(height: 6),
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
              Row(
            children: [
              Text(
                originalPrice,
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                discount,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            ],
          ),
          Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 14),
                const SizedBox(width: 2),
                Text('$reviewCount', style: const TextStyle(fontSize: 12)),
              ],
            ),
              
              ],
              
            ),
            ),
        ],
      ),
    );
  }
}

