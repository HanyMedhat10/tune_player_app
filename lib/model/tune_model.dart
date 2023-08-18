import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  const TuneModel(this.color, this.sound);
  void playSound() {
    print("sound");
    final player = AudioPlayer();
    player.play(AssetSource(sound));
    //   try {
    //     AssetsAudioPlayer.newPlayer().open(
    //       Audio(sound),
    //     );
    //   } catch (e) {
    //     print(e);
    //   }
    // }
  }
}
