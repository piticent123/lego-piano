import 'package:flutter/material.dart';
import 'package:sheet_music/sheet_music.dart';

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
        children: <Widget>[
          SheetMusic(trebleClef: true, scale: "C Major", pitch: "B4"),
          SheetMusic(trebleClef: true, hide: true, scale: "C Major", pitch: "C4"),
          SheetMusic(trebleClef: false, scale: "C Major", pitch: "D4"),
          SheetMusic(trebleClef: false, scale: "C Major", pitch: "C4"),
        ],
      ),
    );
  }
}
