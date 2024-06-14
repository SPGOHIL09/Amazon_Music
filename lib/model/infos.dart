import 'package:amazonmusic/model/playlist_model.dart';
import 'package:amazonmusic/model/song_model.dart';

// List<Map<String,dynamic>> infoSong=[
//   {"image":"assets/songs/arjun_vailley.jpeg"},
//   {"image":"assets/songs/believer.jpeg"},
//   {"image":"assets/songs/calm_down.jpeg"},
//   {"image":"assets/songs/calm_down.jpeg"},
//   {"image":"assets/songs/dynamite.jpeg"},
//   {"image":"assets/songs/hukum.jpeg"},
//   {"image":"assets/songs/khalasi.jpeg"},
//   {"image":"assets/songs/kill_bill.jpeg"},
//   {"image":"assets/songs/people.jpeg"},
//   {"image":"assets/songs/perfect.jpeg"},
//   {"image":"assets/songs/rap_god.jpeg"},
//   {"image":"assets/songs/sanju.jpeg"},
//   {"image":"assets/songs/shut_down.jpeg"},
//   {"image":"assets/songs/sunflower.jpeg"},
//   {"image":"assets/songs/true_stories.jpeg"},
// ];
//
List<Map<String,dynamic>> infoPod=[
  {"image":"assets/podcast/century_stories.jpeg"},
  {"image":"assets/podcast/dei_crime.jpeg"},
  {"image":"assets/podcast/jay_shetty.jpeg"},
  {"image":"assets/podcast/mahabharata.jpeg"},
  {"image":"assets/podcast/ranveer_show.jpeg"}
];
//
// List<Map<String,dynamic>> infoTrend=[
//   {"image":"assets/trending/trending1.jpeg"},
//   {"image":"assets/trending/trending2.jpeg"},
//   {"image":"assets/trending/trending3.jpeg"},
//   {"image":"assets/trending/trending4.jpeg"},
//   {"image":"assets/trending/trending5.jpeg"},
//   {"image":"assets/trending/trending6.jpeg"},
// ];
//
List<Map<String,dynamic>> infoSinger=[
  {"image":"assets/singer/singer1.jpeg"},
  {"image":"assets/singer/singer2.jpeg"},
  {"image":"assets/singer/singer3.jpeg"},
  {"image":"assets/singer/singer4.jpeg"},
  {"image":"assets/singer/singer5.jpeg"}
];

List<Song> songs = <Song>[
  Song(songName: "Arjan Vailly", artistName: "Bhupinder Babbal", coverUrl: "assets/songs/arjun_vailley.jpeg"),
  Song(songName: "Believer", artistName: "Imagine Dragons", coverUrl: "assets/songs/believer.jpeg"),
  Song(songName: "Calm Down", artistName: "Rema, Selena Gomez", coverUrl: "assets/songs/calm_down.jpeg"),
  Song(songName: "Chaleya", artistName: "Arijit Singh, Shilpa Rao", coverUrl: "assets/songs/chaleya.jpeg"),
  Song(songName: "Dynamite", artistName: "BTS", coverUrl: "assets/songs/dynamite.jpeg"),
  Song(songName: "Hukum - Thalaiver Alappara", artistName: "Anirudh Ravichander", coverUrl: "assets/songs/hukum.jpeg"),
  Song(songName: "Khalasi", artistName: "Aditya Gadhvi", coverUrl: "assets/songs/khalasi.jpeg"),
  Song(songName: "Kill Bill", artistName: "SZA", coverUrl: "assets/songs/kill_bill.jpeg"),
  Song(songName: "People", artistName: "Libianca", coverUrl: "assets/songs/people.jpeg"),
  Song(songName: "Perfect", artistName: "ED Sheeran", coverUrl: "assets/songs/perfect.jpeg"),
  Song(songName: "Rap God", artistName: "Eminem", coverUrl: "assets/songs/rap_god.jpeg"),
  Song(songName: "Kar Har Maidaan Fateh", artistName: "Sukhwinder Singh", coverUrl: "assets/songs/sanju.jpeg"),
  Song(songName: "Shutdown", artistName: "Blackpink", coverUrl: "assets/songs/shut_down.jpeg"),
  Song(songName: "Sunflower", artistName: "Post Malone", coverUrl: "assets/songs/sunflower.jpeg"),
  Song(songName: "True Stories", artistName: "AP Dhillon, Shinda Kahlon", coverUrl: "assets/songs/true_stories.jpeg")
];

List<PlayList> playlists = [
  PlayList(playlistName: "Ulitmate Love Songs", songs: songs, imageUrl: "assets/trending/trending1.jpeg", description: "New age romance at its best. Cover Track: Phir Aur Kya Chahiye. Press + to add this to your library."),
  PlayList(playlistName: "50 Most Played International", songs: songs, imageUrl: "assets/trending/trending2.jpeg",description: "The most listened to International songs, updated every Friday. Cover: Selena Gomez, Rema"),
  PlayList(playlistName: "50 Most Played Tamil", songs: songs, imageUrl: "assets/trending/trending3.jpeg",description: "Most listened to Tamil songs, updated every Friday. Press + to add to your library. Cover: Jailer"),
  PlayList(playlistName: "50 Most Played Punjabi", songs: songs, imageUrl: "assets/trending/trending4.jpeg",description: "The most listened to Punjabi songs, updated every Friday. Cover: AP Dhillon"),
  PlayList(playlistName: "50 Most Played Telugu", songs: songs, imageUrl: "assets/trending/trending5.jpeg", description: "Most listened to Telugu songs, updated every Friday. Press + to add to library. Cover: Guntur Kaaram"),
  PlayList(playlistName: "50 Most Played Kannada", songs: songs, imageUrl: "assets/trending/trending6.jpeg",description: "Most listened to Kannada songs, updated every Friday. Cover album: Leo"),
];

Song crr= Song(songName: "Calm Down", artistName: "Rema, Selena Gomez", coverUrl: "assets/songs/calm_down.jpeg");


List<PlayList> getPlaylist(){
  return playlists;
 }

List<Song> getSong (PlayList p){
return p.songs;
}
// List getSong(){
//   return infoSong;
// }
//
List getPod(){
  return infoPod;
}

// List getTrend(){
//   return infoTrend;
// }
//
List getSinger(){
  return infoSinger;
}