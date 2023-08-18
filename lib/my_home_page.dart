import 'package:flutter/material.dart';
import 'package:tune_player_app_t/item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        )),
        backgroundColor: const Color(0xff202b31),
      ),
      body: const Column(
        children: [
          Item(),
        ],
      ),
    );
  }
}
