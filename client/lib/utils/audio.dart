import 'package:just_audio/just_audio.dart';

final _notes = [
  "c",
  "c-",
  "d",
  "d-",
  "e",
  "f",
  "f-",
  "g",
  "g-",
  "a",
  "a-",
  "b",
];
final _players = List.empty(growable: true);

void init() async {
  for (var i = 0; i < 25; i++) {
    var note = _notes[i % 12];
    var octave = (i / 12).floor() + 3;

    var player = AudioPlayer();
    await player.setAsset("assets/audio/$note$octave.mp3");
    _players.add(player);
  }
}

void playNote(int note) {
  _players[note].play();
}