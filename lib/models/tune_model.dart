import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;
  AudioPlayer? player; // Declare AudioPlayer as nullable
  bool isPlaying = false; // Track the playing state
  TuneModel({required this.color, required this.sound});

  void playSound() async {
    // Stop the currently playing song if any
    if (isPlaying && player != null) {
      await player!.stop();
    }

    // Create a new player instance and play the song
    player = AudioPlayer();
    await player!.play(AssetSource(sound));
    isPlaying = true;
  }
}
