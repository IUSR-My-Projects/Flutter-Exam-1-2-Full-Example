import 'package:flutter/material.dart';

import '../models/Product.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }

  Future<List<Product>> fetchProducts() async {
    return List<Product>.generate(
        20,
        (index) => Product(
            id: index.toString(),
            name: 'Product $index',
            description: 'Description $index'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: FutureBuilder<List<Product>>(
        future: futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Custom container for this list of products
            return Container(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          hoverColor: Colors.deepPurple[400],
                          selectedColor: Colors.deepPurple[700],
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepPurple[100],
                            child: Text(snapshot.data![index].id),
                          ),
                          title: Text(snapshot.data![index].name),
                          subtitle: Text(snapshot.data![index].description),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );

            //// ListView normal
            // return ListView.builder(
            //   itemCount: snapshot.data!.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       hoverColor: Colors.deepPurple[400],
            //       selectedColor: Colors.deepPurple[700],
            //       leading: CircleAvatar(
            //         backgroundColor: Colors.deepPurple[100],
            //         child: Text(snapshot.data![index].id),
            //       ),
            //       title: Text(snapshot.data![index].name),
            //       subtitle: Text(snapshot.data![index].description),
            //     );
            //   },
            // );
          }
        },
      ),
    );
  }
}
