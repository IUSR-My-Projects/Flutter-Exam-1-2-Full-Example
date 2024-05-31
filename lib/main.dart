import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/pages/home_page.dart';
import 'models/course.dart';

final List<Course> courses = [
  Course("First Course", "First Student", 20, 11.1),
  Course("Second Course", "Second Student", 20, 11.1),
  Course("Third Course", "Third Student", 20, 11.1),
  Course("Fourth Course", "Fourth Student", 20, 11.1),
  Course("Fifth Course", "Fifth Student", 20, 11.1),
  Course("Sixth Course", "Sixth Student", 20, 11.1),
  Course("Seventh Course", "Seventh Student", 20, 11.1),
  Course("Eighth Course", "Eighth Student", 20, 11.1),
  Course("Ninth Course", "Ninth Student", 20, 11.1),
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
      title: 'Muhmad Omar Haj Hamdo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
