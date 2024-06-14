import 'package:amazonmusic/model/infos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/song_model.dart';
import '../playlistpage.dart';

class SongList extends StatelessWidget {
  Song song;
  SongList({required this.song, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (){
        crr=song;
        Navigator.push(context, MaterialPageRoute(builder: (context) => PlaylistPage(song: song,)));
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset(
                song.coverUrl,
                height: 75,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            Container(
              width: 225,
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.songName,
                    style: GoogleFonts.inter(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    song.artistName,
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "LYRICS",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.6),
                          fontWeight: FontWeight.w800),
                    ),
                    color: Colors.white.withOpacity(0.2),
                  )
                ],
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.add,
                size: 30,
                color: Colors.white,),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_horiz_rounded,
                  size: 30,
                  color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
