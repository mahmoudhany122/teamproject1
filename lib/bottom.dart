import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'archive.dart';
import 'done.dart';
import 'later.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentIndex = 0;
  List<Widget> screens=[
    done(),
    archive(),
    later(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(),
      body: screens[currentIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex= index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon:Icon(
                Icons.list) ,
            label: "done",

          ),
          BottomNavigationBarItem(
            icon:Icon(
                Icons.archive) ,
            label: "archive",

          ),
          BottomNavigationBarItem(
            icon:Icon(
                Icons.add_alert) ,
            label: "later",

          ),
        ],
      ),

    );
  }
}
