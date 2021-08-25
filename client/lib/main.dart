import 'package:flutter/material.dart';
import 'views/listen_to_music.dart';
import 'views/play_music.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> pages = [ListenToMusic(), PlayMusic()];
  int _currentIndex = 0;

  void handleTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LEGO Piano Companion',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(title: Text("LEGO Piano Companion")),
            body: pages[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: handleTabTapped,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.hearing), label: "Listen"),
                BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: "Play"),
              ],
            ),
          ),
        ));
  }
}
