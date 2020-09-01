import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note${n}.wav');
  }

  Expanded BuildKey({Color color, int n}) => Expanded(
        child: FlatButton(
          child: Text("Play"),
          color: color,
          onPressed: () {
            playSound(n);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            BuildKey(color: Colors.red, n: 1),
            BuildKey(color: Colors.orange, n: 2),
            BuildKey(color: Colors.yellow, n: 3),
            BuildKey(color: Colors.green, n: 4),
            BuildKey(color: Colors.teal, n: 5),
            BuildKey(color: Colors.blue, n: 6),
            BuildKey(color: Colors.purple, n: 7),
          ]),
        ),
      ),
    );
  }
}
