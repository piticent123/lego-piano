import 'package:flutter/material.dart';

class ListenToMusic extends StatefulWidget {
  ListenToMusic({Key? key}) : super(key: key);

  @override
  _ListenToMusicState createState() => _ListenToMusicState();
}

class _ListenToMusicState extends State<ListenToMusic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('Listen to this music!')],
      ),
    );
  }
}
