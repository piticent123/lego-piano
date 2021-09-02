import 'package:tonic/tonic.dart';

class Note {
  final Pitch pitch;
  final bool isRest;
  final int duration;

  Note(this.pitch, this.isRest, this.duration);
}

class Song {
  final int tempo;
  final List<List<Note>> bassClef;
  final List<List<Note>> trebleClef;

  Song(this.tempo, this.bassClef, this.trebleClef);
}

final _restPitchPlaceholder = Pitch.parse("c4");
Song parse(String csv) {
  final content = csv.split("\n");
  final header = content.removeAt(0);
  final match = RegExp(r"^(\d+),(\d+),(\d+)$").firstMatch(header);

  if (match == null || match.groupCount != 4) {
    throw Exception("Song header malformed - it must be a comma separated (no spaces) list of 3 numbers: tempo, number of parts on treble clef, and number of parts on bass clef.");
  }

  final tempo = int.parse(match.group(1)!);
  final trebleClef = List.generate(int.parse(match.group(2)!), (index) => List<Note>.empty(growable: true));
  final bassClef = List.generate(int.parse(match.group(3)!), (index) => List<Note>.empty(growable: true));
  for (var line in content) {
    final notes = line.split(",");
    if (notes.length != trebleClef.length + bassClef.length) {
      throw Exception("The number of notes must match the number of parts.");
    }

    for (var i = 0; i < notes.length; i++) {
      final match2 = RegExp(r"^(\d+)([Rr]|.*)$").firstMatch(notes[i]);
      if (match2 == null || match2.groupCount != 2) {
        throw Exception("Note list malformed - It must be the duration (in eighth notes) of the note, then either 'r' or 'R' for a rest, or a valid note name");
      }

      final duration = int.parse(match2.group(1)!);
      final note = match2.group(2)!.toLowerCase() == "r"
        ? Note(_restPitchPlaceholder, true, duration)
        : Note(Pitch.parse(match2.group(2)!), false, duration);

      if (i < trebleClef.length) trebleClef[i].add(note);
      else bassClef[i % trebleClef.length].add(note);
    }
  }

  return Song(tempo, bassClef, trebleClef);
}