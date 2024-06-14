import 'package:amazonmusic/component/bottomnav.dart';
import 'package:amazonmusic/component/iconlist.dart';
import 'package:amazonmusic/component/songlist.dart';
import 'package:amazonmusic/model/playlist_model.dart';
import 'package:amazonmusic/playlistpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component/frozenglass.dart';
import 'component/navbar.dart';
import 'model/infos.dart';
import 'model/song_model.dart';

class TrendingPageList extends StatelessWidget {
  PlayList play;
  TrendingPageList({required this.play, super.key});

  final List<IconData> _icons = [
    Icons.shuffle_rounded,
    Icons.add,
    Icons.file_download_outlined,
    Icons.share,
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
                  play.imageUrl,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            FrozenGlass(containerwidth: MediaQuery.of(context).size.width, containerheight: MediaQuery.of(context).size.height,),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 55),
                    width: MediaQuery.of(context).size.width,
                    child: Navbar(
                      lead: Icons.arrow_back_ios_new,
                      end: Icons.filter_alt_outlined,
                    )),
                Container(
                width:  MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 213,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(play.imageUrl),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          play.playlistName,
                          style: GoogleFonts.inter(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Text(
                          "Curated by Amazon's Music Expert",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          width: 5,
                          child: Text(
                            play.description,
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.8)),
                          )),
                      Container(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          width: 10,
                          child: Text(
                            "${play.songs.length} SONGS",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9)),
                          )),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            for (int i = 0; i < _icons.length; i++)
                              Padding(
                                padding: const EdgeInsets.only(left: 5, right: 5),
                                child: IconList(
                                    iconsize: 30,
                                    icon: _icons[i],
                                    icon_back_color: Colors.transparent),
                              ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.black,
                                  size: 55,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlaylistPage(song: play.songs[0],)),
                                  );
                                },
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.cyan,
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          children: [
                            for(int i = 0 ; i < play.songs.length ; i++) SongList(song: play.songs[i])
                          ],

                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNav(),
    );
  }
}
