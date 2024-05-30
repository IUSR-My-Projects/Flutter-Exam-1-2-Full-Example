import 'package:flutter/material.dart';

class ButtomNavigationWidget extends StatelessWidget {
  const ButtomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                size: 34,
                color: Colors.indigo,
              ),
              Text(
                "Home",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.settings,
                size: 34,
              ),
              Text(
                "Settings",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.person,
                size: 34,
              ),
              Text(
                "Profile",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
