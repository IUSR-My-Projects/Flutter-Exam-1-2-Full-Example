import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(50)),
              child: const Icon(Icons.category, color: Colors.white, size: 40),
            ),
            const Text("Category")
          ],
        ),
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
              child:
                  const Icon(Icons.play_circle, color: Colors.white, size: 40),
            ),
            const Text("Classes")
          ],
        ),
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(50)),
              child: const Icon(Icons.book, color: Colors.white, size: 40),
            ),
            const Text("Free Courses")
          ],
        ),
      ],
    );
  }
}
