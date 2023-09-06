import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
// import 'package:music_notes_player_app_setup/widgets/tune_item.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item2.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});
  List<TuneModel> Tunes = [
    TuneModel(color: const Color(0xffffadad), sound: 'note1.wav'),
    TuneModel(color: const Color(0xffffd6a5), sound: 'note2.wav'),
    TuneModel(color: const Color(0xfffdffb6), sound: 'note3.wav'),
    TuneModel(color: const Color(0xffcaffbf), sound: 'note4.wav'),
    TuneModel(color: const Color(0xff9bf6ff), sound: 'note5.wav'),
    TuneModel(color: const Color(0xffa0c4ff), sound: 'note6.wav'),
    TuneModel(color: const Color(0xffbdb2ff), sound: 'note7.wav'),
    // TuneModel(color: const Color(0xffffc6ff), sound: 'note8.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flutter Tune'),
        centerTitle: true,
        backgroundColor: Color(0xff26313A),
      ),
      body: Column(
        children: Tunes.map((e) => TuneItem2(
              tune: e,
            )).toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItem() {
  //   List<TuneItem> items = [];
  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
