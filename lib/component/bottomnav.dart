import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

import '../homepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  int _selectedIndex = 0;
  _onTap(int index){
    setState(() => _selectedIndex = index);
    switch (index){
      case 0 :
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

    }


  }
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      backgroundColor: Colors.transparent,
      
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, ),
          label: 'Home',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded,),
          label: 'Find',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Library' ,
        ),

      ],
      iconSize: 30,
      selectedIconTheme: IconThemeData(color: Colors.cyanAccent),
      selectedItemColor: Colors.cyanAccent,
      unselectedIconTheme: IconThemeData(color: Colors.white,),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      currentIndex: _selectedIndex,
      elevation: 0,

      onTap: _onTap,
    );
  }
}
