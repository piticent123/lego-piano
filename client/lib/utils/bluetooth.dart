import 'package:flutter_blue/flutter_blue.dart';

void connect(void Function(List<ScanResult>) callback) {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  // Start scanning
  flutterBlue.startScan(timeout: Duration(seconds: 4));

  // Listen to scan results
  flutterBlue.scanResults.listen(callback);

  // Stop scanning
  // flutterBlue.stopScan();
}
