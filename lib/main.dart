import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildGrid(int? soundNumber, Color? color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color ?? Colors.white),
        ),
        onPressed: () {
          playSound(soundNumber ?? 1);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildGrid(1, Colors.red),
              buildGrid(2, Colors.orange),
              buildGrid(3, Colors.yellow),
              buildGrid(4, Colors.green),
              buildGrid(5, Colors.teal),
              buildGrid(6, Colors.blue),
              buildGrid(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
