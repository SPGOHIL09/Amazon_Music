
import 'package:amazonmusic/homepage.dart';
import 'package:flutter/material.dart';

class AmazonMusicSplash extends StatefulWidget {
  const AmazonMusicSplash({super.key});

  @override
  State<AmazonMusicSplash> createState() => _AmazonMusicSplashState();
}

class _AmazonMusicSplashState extends State<AmazonMusicSplash> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(

          child: Image.asset("assets/amazon-music.png",height: 200, width: 200,),
        ),
      ),
    );
  }
}
