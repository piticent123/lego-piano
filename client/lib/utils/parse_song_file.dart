import 'package:tonic/tonic.dart';

class Note {
  final Pitch pitch;
  final bool isRest;
  final bool isContinued;
  final int displayLength;

  Note(this.pitch, this.isRest, this.isContinued, this.displayLength);
}

class Song {
  final int tempo;
  final List<List<Note>> bassClef;
  final List<List<Note>> trebleClef;

  Song(this.tempo, this.bassClef, this.trebleClef);
}

