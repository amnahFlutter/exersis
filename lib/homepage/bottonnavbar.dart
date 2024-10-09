import 'package:exercises/allexercises.dart';

import 'package:flutter/material.dart';
class hompage extends StatefulWidget {
  const hompage({super.key});

  @override
  State<hompage> createState() => _hompageState();
}

class _hompageState extends State<hompage> {
  int selectedindex=0;
  final List bar=[

    allexercises(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: selectedindex,
        selectedItemColor: Color(0xFFF5CEB8),
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black38,
          selectedFontSize: 30,
          selectedLabelStyle:TextStyle(fontSize:20,
          fontWeight:FontWeight.w600),

          items:[
            BottomNavigationBarItem(
                icon:Icon(Icons.fitness_center),
                label: "All Exercises"),
            BottomNavigationBarItem(
                icon:Icon(Icons.calendar_month),
            label: "Today"),

            BottomNavigationBarItem(
                icon:Icon(Icons.settings),
            label: "Settings"),

      ]),
      body: bar.elementAtOrNull(selectedindex),

    );
  }
}
