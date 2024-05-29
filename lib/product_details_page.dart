// Assume you have a Product class (similar to the one in the previous example)

import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/product.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product; // The selected product

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(product.description),
            SizedBox(height: 16),
            Text('\$${product.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18)),
            // Add more details as needed (e.g., images, reviews, etc.)
          ],
        ),
      ),
    );
  }
}
