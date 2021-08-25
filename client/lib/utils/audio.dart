import 'package:just_audio/just_audio.dart';
import 'package:tonic/tonic.dart';

final _players = List.empty(growable: true);

void init() async {
  for (var p = Pitch.parse("c4"); p != Pitch.parse("c6"); p += Interval.fromSemitones(1)) {
    var player = AudioPlayer();
    await player.setAsset("assets/audio/$p.mp3");
    _players.add(player);
  }
}

void playNote(int note) {
  _players[note].play();
}