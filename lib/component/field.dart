import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Field extends StatelessWidget {
  final controller;
  final String lableText;
  final bool obscureText;
  final validator;
  const Field({super.key,required this.controller,required this.lableText,required this.obscureText, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white.withOpacity(0.1),
      ),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.white,
        style: GoogleFonts.inter(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          labelText: lableText,
          labelStyle: GoogleFonts.inter(color: Colors.white, ),
          floatingLabelStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
        ),

      ),
    );
  }
}
