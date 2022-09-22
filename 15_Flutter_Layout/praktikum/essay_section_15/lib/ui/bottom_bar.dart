import 'package:essay_section_15/ui/grid_view.dart';
import 'package:essay_section_15/ui/list_view.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> screen = [
    const ListViewScreen(),
    GridViewScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white70,
        iconSize: 40,
        currentIndex: currentIndex,
        onTap: (index) => setState(()=>currentIndex = index),
        items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'ListView',
             ),
             BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'GridView',
             ),
        ])
  );
  }
}