import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/product.dart';
import 'package:muhmad_omar_haj_hamdo/product_page.dart';

final productList = [
  Product(title: 'Widget A', description: 'Awesome widget', price: 49.99),
  Product(title: 'Widget B', description: 'Another cool widget', price: 29.99),
  Product(
      title: 'Widget C', description: 'Yet another cool widget', price: 19.99),
  Product(
      title: 'Widget D', description: 'Yet another cool widget', price: 9.99),
  Product(
      title: 'Widget E', description: 'Yet another cool widget', price: 4.99),
  Product(
      title: 'Widget F', description: 'Yet another cool widget', price: 2.99),
  Product(
      title: 'Widget G', description: 'Yet another cool widget', price: 1.99),
  Product(
      title: 'Widget H', description: 'Yet another cool widget', price: 0.99),
  Product(
      title: 'Widget I', description: 'Yet another cool widget', price: 0.49),
  Product(
      title: 'Widget J', description: 'Yet another cool widget', price: 0.29),
  Product(
      title: 'Widget K', description: 'Yet another cool widget', price: 0.19),
  Product(
      title: 'Widget L', description: 'Yet another cool widget', price: 0.09),
  Product(
      title: 'Widget M', description: 'Yet another cool widget', price: 0.04),
  Product(
      title: 'Widget N', description: 'Yet another cool widget', price: 0.02),
  Product(
      title: 'Widget O', description: 'Yet another cool widget', price: 0.01),
  Product(
      title: 'Widget P', description: 'Yet another cool widget', price: 0.009),
  Product(
      title: 'Widget Q', description: 'Yet another cool widget', price: 0.004),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductListPage(products: productList),
      // home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Demo Home Page',
          style: TextStyle(color: Colors.white70),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(),
    );
  }
}

