import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  IconData icon;
  double iconsize;
  Color icon_back_color;
   IconList({
     required this.iconsize,
    required this.icon,
     required this.icon_back_color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: icon_back_color
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              icon,
              size: iconsize,
              color: Colors.white,
            ),
          ),
        ),
      );
    }
  }

