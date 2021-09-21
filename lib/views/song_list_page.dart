import 'package:flutter/material.dart';
import 'package:music_app/components/appBar.dart';
import 'package:music_app/models/home_model.dart';
import 'package:music_app/models/model_data.dart';
import 'package:music_app/models/song_list_model.dart';
import 'package:music_app/views/view_song.dart';

class SongListPage extends StatefulWidget {
  final HomeModel songData;
  SongListPage({Key key, this.songData}) : super(key: key);

  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> {
  List<SongList> songFeed = [];
  @override
  void initState() {
    super.initState();
    songFeed = Data.songFeed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: NetworkImage("${widget.songData.listImage}"),
                ),
              ),
            ),
            CustomAppBar(),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: ListView.builder(
                itemCount: songFeed.length,
                itemBuilder: (context, index) => _songTile(
                  songFeed[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _songTile(SongList songFeed) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewSong(playSong: songFeed,),
          ),
        );
      },
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("${songFeed.songImage}"),
            ),
          ),
        ),
        title: Text(
          "${songFeed.songName}",
          style: TextStyle(color: Colors.white70),
        ),
        subtitle: Text(
          "${songFeed.artistName}",
          style: TextStyle(color: Colors.white70),
        ),
        trailing: Icon(
          Icons.more_vert_rounded,
          color: Colors.white54,
        ),
      ),
    );
  }
}
