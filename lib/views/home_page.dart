import 'package:flutter/material.dart';
import 'package:music_app/models/home_2_model.dart';
import 'package:music_app/views/song_list_page.dart';
import 'package:music_app/views/song_view.dart';

import '../utils/config_color.dart';
import '../models/model_data.dart';
import '../models/home_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeModel> songAlbum = [];
  List<HomeSecondModel> weeklySongFeed = [];
  @override
  void initState() {
    songAlbum = Data.songAlbum();
    super.initState();
    weeklySongFeed = Data.weeklySongFeed();
  }

  var _scaffoldKey = GlobalKey<ScaffoldState>();

  // void bottomSheet() {
  //   setState(() {});
  //   openBottomSheet();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: ConfigColor.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            Container(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: songAlbum.length,
                itemBuilder: (context, index) {
                  return _photoTile(songAlbum[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Rling Weekly",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 6),
            Container(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weeklySongFeed.length,
                itemBuilder: (context, index) {
                  return weeklySong(weeklySongFeed[index]);
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Recently Music",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            _playmusic(),
          ],
        ),
      ),
    );
  }

  Widget _header() => Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "RLING",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                // Icon(
                //   Icons.search,
                //   color: Colors.white,
                // ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Albums",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text("View all",
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
        ],
      );

  Widget _photoTile(HomeModel data) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SongListPage(
                        songData: data,
                      )));
        },
        child: Container(
          width: 300,
          margin: EdgeInsets.only(left: 15, right: 15),
          padding: EdgeInsets.only(left: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage("${data.listImage}")),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "${data.firstText}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 4),
              Text("${data.lastText}",
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ],
          ),
        ),
      );

  Widget weeklySong(HomeSecondModel data) => Container(
        width: 300,
        height: 170,
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.only(left: 15, top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("${data.image}"),
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${data.firstText}",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 4),
                Text("${data.lastText}",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
                Spacer(),
                Icon(Icons.play_circle_outline, color: Colors.white)
              ],
            ),
          ],
        ),
      );

  _playmusic() => Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Row(children: [
          Text(
            "01",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SongView()));
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/song.jpg"))),
            ),
          ),
          SizedBox(width: 10),
          Container(
            child: Column(
              children: [
                Text("Nice For What",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Avinci Jhon", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Spacer(),
          IconButton(
              icon: Icon(Icons.more_horiz, color: Colors.white),
              onPressed: () {
                openBottomSheet();
              }),
        ]),
      );
  void openBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => ListView(
              children: [
                ListTile(
                  title: Text("Add to playlist"),
                ),
                ListTile(
                  title: Text("play later"),
                ),
                ListTile(
                  title: Text("Delete"),
                ),
                ListTile(
                  title: Text("Share"),
                ),
              ],
            ));
  }
}
