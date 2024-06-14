import 'package:amazonmusic/model/song_model.dart';

class PlayList{
  final String playlistName;
  final List<Song> songs;
  final String imageUrl;
  final String description;


  PlayList({required this.playlistName, required this.songs, required this.imageUrl, required this.description});


}


