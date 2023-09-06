import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

class TuneItem2 extends StatelessWidget {
  const TuneItem2({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: tune.color,
        child: ListTile(
          leading: Text('Sound1'),
          trailing: Text(tune.sound),
          // title: const Text('Tune 2'),
          onTap: () {
            tune.playSound();
          },
        ),
      ),
    );
  }
}
