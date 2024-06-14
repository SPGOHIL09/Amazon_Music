import 'package:amazonmusic/homepage.dart';
import 'package:amazonmusic/login.dart';
import 'package:amazonmusic/playlistpage.dart';
import 'package:amazonmusic/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          splash: AmazonMusicSplash(),
          nextScreen: Login(),
        duration: 1500,
        backgroundColor: Colors.grey.shade900,
        splashTransition: SplashTransition.fadeTransition,


      ),
    );
  }
}
