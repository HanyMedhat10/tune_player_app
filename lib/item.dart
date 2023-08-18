import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_player_app_t/assets.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource(Assets.Note1));
      },
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: 100,
      ),
    );
  }
}