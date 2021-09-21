import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music_app/models/song_list_model.dart';

class ViewSong extends StatefulWidget {
  final SongList playSong;
  ViewSong({Key key, this.playSong}) : super(key: key);

  @override
  _ViewSongState createState() => _ViewSongState();
}

class _ViewSongState extends State<ViewSong>
    with SingleTickerProviderStateMixin {
  int valueControllar = 20;
  bool isAnimated = true;
  AnimationController iconController;
  @override
  void initState() {
    super.initState();
    iconController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    iconController.forward().then((value) async {
      await Future.delayed(
        Duration(milliseconds: 500),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height - 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.5,
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(35),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/my-heart-will-go-on-sony-music-entertainment-1563499447.jpg"),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "I Love You",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "Neha kakker,Dhvani Ikka",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Material(
                                      
                                      child: Slider(

                                        value: valueControllar.toDouble(),
                                        min: 1,
                                        max: 100,
                                        divisions: 100,
                                        activeColor: Colors.blue,
                                        inactiveColor: Colors.grey,
                                        label: "${valueControllar.round()}",
                                        onChanged: (double newvalue) {
                                          setState(() {
                                            valueControllar = newvalue.round();
                                          });
                                        },
                                        semanticFormatterCallback:
                                            (double newvalue) {
                                          return "${newvalue.round()}";
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FloatingActionButton(
                                            onPressed: () {},
                                            child: Icon(Icons.skip_previous),
                                            tooltip: "previous",
                                          ),
                                          Tooltip(
                                            message:
                                                isAnimated ? 'pause' : 'paly',
                                            child: Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      "assets/images/play_pause.png"),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black26,
                                                      offset: Offset(0, 7),
                                                      blurRadius: 10,
                                                      spreadRadius: 3),
                                                ],
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                },
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    AnimatedIcon(
                                                      icon: AnimatedIcons
                                                          .play_pause,
                                                      progress: iconController,
                                                      size: 40,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          FloatingActionButton(
                                            onPressed: () {},
                                            child: Icon(Icons.fast_rewind),
                                            tooltip: "Next",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.shuffle),
                                      Icon(Icons.select_all),
                                      Icon(Icons.favorite),
                                      Icon(Icons.share),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;
      isAnimated ? iconController.forward() : iconController.reverse();
    });
  }
}
