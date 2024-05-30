import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Column(
        children: [
          // item
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.ac_unit, color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        "Flutter",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("50 videos")
                    ],
                  ),
                )),
            Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.dark_mode, color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        "Dart",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("60 videos")
                    ],
                  ),
                )),
          ]),

          SizedBox(
            height: 20,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.coffee, color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        "Flutter",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("50 videos")
                    ],
                  ),
                )),
            Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.access_alarm, color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        "Dart",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("60 videos")
                    ],
                  ),
                )),
          ]),

          SizedBox(
            height: 20,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.account_balance,
                          color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        "Flutter",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("50 videos")
                    ],
                  ),
                )),
            Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.work_history, color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        "Dart",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("60 videos")
                    ],
                  ),
                )),
          ]),

          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
