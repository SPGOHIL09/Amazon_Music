import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  IconData lead;
  IconData end;
   Navbar({
    required this.lead,
    required this.end,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width:  MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: IconButton(
              onPressed: (){
                if(lead == Icons.arrow_back_ios_new){
                  Navigator.pop(context);
                }
              },
              icon: Icon(
                lead,
                color: Colors.white,),
            ),
          ),
          Container(
            child: Image.asset(
              "assets/amazon-music.png",
              fit: BoxFit.fill,
              height: 25,
            ),

          ),
          Container(
            child: IconButton(
              onPressed: (){},
              icon: Icon(
                end,
                color: Colors.white,
              ),
            ),
          )

        ],
      ),
    );
  }
}