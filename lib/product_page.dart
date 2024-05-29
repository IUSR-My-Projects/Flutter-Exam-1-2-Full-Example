// Assuming you have a Product class with properties: title, description, and price

import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/product.dart';
import 'package:muhmad_omar_haj_hamdo/product_add_page.dart';
import 'package:muhmad_omar_haj_hamdo/product_details_page.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products; // List of products

  const ProductListPage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(product: product)));
            },
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(product.title),
                  Text(product.description),
                  Text('\$${product.price.toStringAsFixed(2)}'),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the AddProductPage
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddProductPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
