import 'package:flutter/material.dart';
import 'package:tune_player_app_t/assets.dart';
import 'package:tune_player_app_t/model/tune_model.dart';
import 'package:tune_player_app_t/widgets/tune_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  final List<TuneModel> tune = const [
    TuneModel(Colors.red, Assets.Note1),
    TuneModel(Colors.orange, Assets.Note2),
    TuneModel(Colors.yellow, Assets.Note3),
    TuneModel(Colors.green, Assets.Note4),
    TuneModel(Color(0xff2f9688), Assets.Note5),
    TuneModel(Colors.blue, Assets.Note6),
    TuneModel(Colors.purple, Assets.Note7),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / tune.length;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff202b31),
      ),
      // body: ListView.builder(
      //   physics: const NeverScrollableScrollPhysics(),
      //   itemCount: tune.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return TuneItem(
      //       tune: tune[index],
      //       height: height,
      //     );
      //   },
      // ),
      body: Column(
        children: 
          (tune.map((e) => TuneItem(tune: e, height: height))).toList(),
        
      ),
    );
  }
}
