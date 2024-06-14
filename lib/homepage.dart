import 'package:amazonmusic/component/bottomnav.dart';
import 'package:amazonmusic/model/playlist_model.dart';
import 'package:amazonmusic/model/song_model.dart';
import 'package:amazonmusic/playlistpage.dart';
import 'package:amazonmusic/trendingpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'component/navbar.dart';
import 'model/infos.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 55),
                child: Navbar(lead: Icons.notifications, end: Icons.settings_rounded,)),
            Container(
              width:  MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 215,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Stack(alignment: FractionalOffset.bottomLeft, children: [
                    Container(
                        child: Image.asset(
                          "assets/singer/singer4.jpeg",
                          fit: BoxFit.fitHeight,
                          height: 430,
                          width: MediaQuery.of(context).size.width,
                        ),
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(5.0))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      textDirection: TextDirection.ltr,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 20, right: 30),
                          child: Container(
                            height: 70,
                            width: 70,
                            child: IconButton(
                              icon: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.black,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PlaylistPage(song: crr,)),);
                              },
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10,
                            bottom: 10,
                          ),
                          child: Text("STATION",
                              style: GoogleFonts.inter(
                                  color: Colors.cyan, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 30, left: 10),
                          child: Text("MY SOUNDTRACK",
                              style: GoogleFonts.inter(
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28)),
                        )
                      ],
                    )
                  ]),
                  Heading("TRENDING PAGE", mtop: 10.0, mleft: 15.0, fsize: 20.0),
                  Container(
                    padding: EdgeInsets.all(2),
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: playlists.length,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context, index) {
                        PlayList p = getPlaylist()[index];
                        return Container(
                          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                          margin: EdgeInsets.only(top: 5,bottom: 5),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TrendingPageList(play: p,)));
                            },
                              child: ImageDesign(imgUrl: p.imageUrl, imgRadius: 10)
                          ),
                        );
                      },
                      ),
                  ),
                  Heading("SINGERS YOU LISTEN...", mtop: 10.0, mleft: 15.0, fsize: 20.0),
                  Container(
                    height: 160,
                    padding: EdgeInsets.all(2),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: infoSinger.length,
                      itemBuilder: (context, index){
                            Map sing = getSinger()[index];
                            return Container(
                                padding: EdgeInsets.only(left: 20 ,top: 15, bottom: 15 ),
                                margin: EdgeInsets.only(top: 5,bottom: 5),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(80),
                                onTap: (){},
                                child: ImageDesign(imgUrl: sing['image'], imgRadius: 80),
                              ),
                            );
                      },
                    ),
                  ),
                  Heading("PODCASTS YOU LISTEN...", mtop: 10.0, mleft: 15.0, fsize: 20.0),
                  Container(
                    height: 160,
                    padding: EdgeInsets.all(2),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: infoSinger.length,
                      itemBuilder: (context, index){
                        Map pod = getPod()[index];
                        return Container(

                            padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                          margin: EdgeInsets.only(top: 5,bottom: 5),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: (){},
                            child: ImageDesign(imgUrl: pod['image'], imgRadius: 10),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      bottomNavigationBar: BottomNav()

    );
  }
}
Widget ImageDesign({required String imgUrl,required double imgRadius }){
  return ClipRRect(
    borderRadius: BorderRadius.circular(imgRadius),
    child: Image.asset(imgUrl,
      fit: BoxFit.cover,),
  );
}

Widget Heading(String text , {double mtop = 0.0,double mbottom = 0.0,double = 0.0, mleft, double mright = 0.0,double fsize = 0.0}){
  return Container(
    margin: EdgeInsets.only(top: mtop, left: mleft),
    child: Text(
      text,
      style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: fsize,
          fontWeight: FontWeight.bold),
    ),
  );
}