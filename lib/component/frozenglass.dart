import 'dart:ui';

import 'package:flutter/material.dart';

class FrozenGlass extends StatelessWidget {
  final containerwidth;
  final containerheight;

  FrozenGlass({
    super.key,
    required this.containerwidth,
    required this.containerheight,

  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      child: Container(
        width: containerwidth,
        height: containerheight,
        color: Colors.transparent,
        child: Stack(
          children: [
            //blur effct
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
              child: Container(),
            ),
            //gradiet effect
            Container(
              decoration: BoxDecoration(

                gradient: LinearGradient(
                    begin:Alignment.topLeft,
                    end:Alignment.bottomRight
                , colors: [
                  Colors.black.withOpacity(0.65),
                  Colors.black.withOpacity(0.65),
                ]),
              ),
            ),
            //child

          ],
        ),
      ),
    );
  }
}
