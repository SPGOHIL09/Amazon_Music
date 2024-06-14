
import 'package:amazonmusic/component/field.dart';
import 'package:amazonmusic/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _formKey = GlobalKey<FormState>();

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final userVal = (value){
    if(value!.isEmpty){
      return 'ENTER USERNAME';
    }
  };
  final passVal = (value){
    if(value!.isEmpty){
      return 'ENTER PASSWORD';
    }
    if(value.length < 6){
      return 'PASSWORD MIN LENGTHH IS 8';
    }
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Form(
        key: _formKey,
        child: Column(
          children: [

            SafeArea(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(child: Image.asset("assets/amazon-music.png",height: 200, width: 200,),),
                    Field(lableText: 'Name',controller: usernameController,obscureText: false,validator: userVal),
                    SizedBox(height: 20,),
                    Field(lableText: 'Password',controller: passwordController,obscureText: true, validator: passVal),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Forgot password?",style: GoogleFonts.inter(color: Colors.white),),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 4),
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 200,
                          child:
                          Text("Log in",style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12)
                          ),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        height: 45,
                        width: 200,
                        child:
                        Text("Sign up",style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)
                        ),),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
