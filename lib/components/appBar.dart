import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  CustomAppBar({Key key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _closed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: _closed ? 55 : 300,
              height: _closed ? 50 : 50,
              decoration: BoxDecoration(
                color: !_closed ? Colors.white12 : Colors.transparent,
                borderRadius: BorderRadius.circular(35),
                // boxShadow: kElevationToShadow[1],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      child: !_closed
                          ? TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.blue[300]),
                                border: InputBorder.none,
                              ),
                            )
                          : null,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_closed ? 32 : 0),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(_closed ? 32 : 0),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _closed
                                  ? Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    )
                                  : Icon(Icons.close, color: Colors.white),
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _closed = !_closed;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Image.asset("assets/images/music.png", height: 30),
          ],
        ),
      ),
    );
  }
}
