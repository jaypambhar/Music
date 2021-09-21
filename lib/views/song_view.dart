import 'package:flutter/material.dart';
import 'package:music_app/utils/config_color.dart';

class SongView extends StatefulWidget {
  SongView({Key key}) : super(key: key);

  @override
  _SongViewState createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            _arrow(),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "_ _ _",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                  image: DecorationImage(
                      image: AssetImage("assets/images/songview.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Text(
                  "Sweety Tera Drama",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(height: 6),
                Text(
                  "One Republic",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 25),
                Text(
                  "It is a long established fact that a reader",
                  style: TextStyle(color: Colors.pink),
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.share_rounded, color: Colors.blueGrey),
                      Icon(Icons.playlist_add, color: Colors.blueGrey),
                      Icon(Icons.favorite_border, color: Colors.blueGrey),
                      Icon(Icons.download_outlined, color: Colors.blueGrey),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        '___________________',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2:46',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '2:46',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.shuffle, color: Colors.blueGrey),
                      Icon(Icons.skip_previous, color: Colors.blueGrey),
                      IconButton(
                          icon: Icon(Icons.play_circle_fill,
                              color: Colors.blueGrey),
                          iconSize: 60,
                          onPressed: () {}),
                      Icon(Icons.skip_next, color: Colors.blueGrey),
                      Icon(Icons.refresh, color: Colors.blueGrey),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _arrow() => Row(
        children: [
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
          ),
        ],
      );

  
}
