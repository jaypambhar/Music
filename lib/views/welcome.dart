import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:music_app/utils/config_color.dart';
import 'package:music_app/utils/route_page.dart';
import 'package:music_app/models/photo_model.dart';
import '../models/model_data.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List<PhotoModel> photoFeed = [];
  @override
  void initState() {
    photoFeed = Data.photoFeed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.secondaryColor,
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: photoFeed.length,
              itemBuilder: (context, index) {
                return _headerImage(photoFeed[index]);
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 260,
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.only(left: 10, right: 20),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  text: ". . . . .",
                  style: TextStyle(fontSize: 25),
                  colors: [
                    Colors.white,
                    Colors.green,
                    Colors.yellow,
                    Colors.pink
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "App ui kit",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                SizedBox(height: 15),
                GradientText(
                  text: "WELCOME TO\nRLING APP",
                  style: TextStyle(fontSize: 20),
                  colors: <Color>[
                    Colors.deepOrange,
                    Colors.white,
                    Colors.green
                  ],
                ),
                SizedBox(height: 8),
                GradientText(
                  text: "Mack your design workflow easeir and",
                  style: TextStyle(fontSize: 15),
                  colors: <Color>[
                    Colors.deepOrange,
                    Colors.white,
                    Colors.green
                  ],
                ),
                GradientText(
                  text: "save your time",
                  style: TextStyle(fontSize: 15),
                  colors: <Color>[
                    Colors.deepOrange,
                    Colors.white,
                    Colors.green
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            color: Colors.pink,
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutePage.home);
                },
                child: Text(
                  "GET STARTED",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }

  Widget _headerImage(PhotoModel data) => Container(
        height: 100,
        width: 360,
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage("${data.firstImages}"),
            fit: BoxFit.cover,
          ),
        ),
      );
}
