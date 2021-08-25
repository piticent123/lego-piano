import 'package:flutter/material.dart';
import 'views/listen_to_music.dart';
import 'views/play_music.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEGO Piano Companion',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("LEGO Piano Companion"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.hearing)),
                Tab(icon: Icon(Icons.touch_app)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListenToMusic(),
              PlayMusic()
            ],
          )
        ),
      )
    );
  }
}
