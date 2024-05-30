import 'package:flutter/material.dart';
import 'package:muhmad_omar_haj_hamdo/widgets/icon_widget.dart';
import 'package:muhmad_omar_haj_hamdo/widgets/search_widget.dart';

import '../widgets/buttom_navigation_widget.dart';
import '../widgets/course_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: const Icon(Icons.health_and_safety_sharp,
            color: Colors.white, size: 30),
        actions: const [
          Icon(Icons.notification_important_rounded,
              color: Colors.white, size: 30),
          SizedBox(width: 10)
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(children: [
          SearchWidget(),
          SizedBox(height: 20),
          IconWidget(),
          // Courses -- see all
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Courses",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("see all", style: TextStyle(color: Colors.indigo))
              ],
            ),
          ),

          SizedBox(height: 20),

          CourseWidget(),
        ]),
      ),
      bottomNavigationBar: const ButtomNavigationWidget(),
    );
  }
}
