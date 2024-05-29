import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Product Title'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Product Description'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Save the new product and navigate back to the product list
                // (You can handle saving logic here)
                Navigator.of(context).pop();
              },
              child: Text('Save Product'),
            ),
          ],
        ),
      ),
    );
  }
}
