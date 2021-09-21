import 'package:flutter/material.dart';
import 'package:music_app/components/appBar.dart';
import 'package:music_app/views/home_page.dart';
import 'package:music_app/utils/route_page.dart';
import 'package:music_app/views/song_list_page.dart';
import 'package:music_app/views/song_view.dart';
import 'package:music_app/views/welcome.dart';
import 'package:music_app/views/view_song.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: "Music",
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: RoutePage.start,
      routes: {
        RoutePage.start: (context) => StartPage(),
        RoutePage.home: (context) => HomePage(),
        RoutePage.songView: (context) => SongView(),
        RoutePage.songListPage:(context)=>SongListPage(),
        RoutePage.customAppBar:(context)=>CustomAppBar(),
        RoutePage.viewSong:(context)=>ViewSong(),
      },
    );
  }
}
