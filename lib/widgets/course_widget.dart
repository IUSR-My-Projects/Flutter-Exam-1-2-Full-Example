import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/widgets/product_item.dart';
import '../models/product.dart';

final courses = [
  Product(icon: Icons.ac_unit, title: "Flutter", videos: "50 videos"),
  Product(icon: Icons.dark_mode, title: "Dart", videos: "60 videos"),
  Product(icon: Icons.coffee, title: "Flutter", videos: "50 videos"),
  Product(icon: Icons.access_alarm, title: "Dart", videos: "60 videos"),
  Product(icon: Icons.account_balance, title: "Flutter", videos: "50 videos"),
  Product(icon: Icons.work_history, title: "Dart", videos: "60 videos"),
];

class CourseWidget extends StatelessWidget {
  const CourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: courses.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          final course = courses[index];
          return ProductItem(
            icon: course.icon,
            title: course.title,
            videos: course.videos,
          );
        },
      ),
    );
  }
}
