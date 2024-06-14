import 'package:amazonmusic/component/frozenglass.dart';
import 'package:amazonmusic/component/iconlist.dart';
import 'package:amazonmusic/component/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:amazonmusic/model/infos.dart';
import 'model/playlist_model.dart';
import 'model/song_model.dart';

class PlaylistPage extends StatefulWidget {
  Song song;
   PlaylistPage(
        {
          required this.song,
          super.key
        }
      );

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  double _value = 0.00;

  final List<IconData> _icons = [
    Icons.share,
    Icons.cast_rounded,
    Icons.playlist_play_rounded,
    Icons.more_horiz_rounded,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      body: Stack(
        children: [
          Container(
            child: ClipRRect(
              child: Image.asset(
                widget.song.coverUrl,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          FrozenGlass(containerwidth: MediaQuery.of(context).size.width, containerheight: MediaQuery.of(context).size.height,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 55),
                width: MediaQuery.of(context).size.width,
                  child: Navbar(lead: Icons.arrow_back_ios_new, end: Icons.more_vert_rounded,)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(widget.song.coverUrl),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.only(left: 30, right: 30,top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.1)
                    ),
                    child: Text("Lyrics", style: GoogleFonts.inter(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.only(left: 30, right: 30,top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.1)
                    ),
                    child: Text("X-Ray", style: GoogleFonts.inter(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold)),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(widget.song.songName, style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white
                    )),

                  ),
                  Expanded(
                    child: IconButton(onPressed: (){}, icon: Icon(
                      Icons.favorite_border_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                      alignment: AlignmentDirectional.bottomEnd,
                      padding: EdgeInsets.only(right: 30),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 5),
                child: Text(widget.song.artistName, style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    trackShape: RectangularSliderTrackShape(),
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 6,
                      pressedElevation: 8
                    ),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
                    overlayColor: Colors.white.withOpacity(0.5)
                  ),
                  child: Slider(
                    thumbColor: Colors.white,
                    min: 0,
                    max: 100,
                    value: _value,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white.withOpacity(0.5),

                    onChanged: (value){
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(

                  children: [
                    Expanded(child: Container(

                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.skip_previous_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      )),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.1)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(child: Container(
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.skip_next_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for(int i = 0 ; i < _icons.length ; i++) IconList(iconsize: 30, icon: _icons[i], icon_back_color: Colors.white.withOpacity(0.1),) ,

                  ],


                ),
              )

            ],
          ),
        ],
      )

      );
   
  }
}
