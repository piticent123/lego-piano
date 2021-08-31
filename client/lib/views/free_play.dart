import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:lego_piano/utils/bluetooth.dart';

class FreePlay extends StatefulWidget {
  FreePlay({Key? key}) : super(key: key);

  @override
  _FreePlayState createState() => _FreePlayState();
}

class _FreePlayState extends State<FreePlay> {
  void callback(List<ScanResult> results) {
    // do something with scan results
    for (ScanResult r in results) {
      print('${r.device.name} found! rssi: ${r.rssi}');
    }
  }

  void onClick() {
    connect(callback);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(child: Text('Free play'), onPressed: onClick),
        ],
      ),
    );
  }
}
