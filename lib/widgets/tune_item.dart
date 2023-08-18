import 'package:flutter/material.dart';

import '../model/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key,
    required this.tune,
    required this.height,
  });
  final TuneModel tune;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
          // width: double.infinity,
          // height: height - 10,
        ),
      ),
    );
  }
}
