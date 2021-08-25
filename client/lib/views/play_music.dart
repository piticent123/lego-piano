import 'package:flutter/material.dart';

class PlayMusic extends StatefulWidget {
  PlayMusic({Key? key}) : super(key: key);

  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('Play music, monkey!')],
      ),
    );
  }
}