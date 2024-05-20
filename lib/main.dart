import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/pages/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const MyHomePage(),
        "/product": (context) => const ProductList(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
      body: Container(
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Hello World',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ), // end hello world

            // start button to product page
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              },
              child: const Text(
                'Product Page',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ), // end button to product page
          ],
        ),
      ),
    );
  }
}