import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color1=Colors.black, Color color2=Colors.lightBlueAccent, int soundNumber=1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: color1,
          backgroundColor: color2,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Click Me'),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  color1: Colors.black,
                  color2: Colors.tealAccent,
                  soundNumber: 1),
              buildKey(
                  color1: Colors.black,
                  color2: Colors.yellowAccent,
                  soundNumber: 2),
              buildKey(
                  color1: Colors.black,
                  color2: Colors.orange,
                  soundNumber: 3),
              buildKey(
                  color1: Colors.black,
                  color2: Colors.pinkAccent,
                  soundNumber: 4),
              buildKey(
                  color1: Colors.black,
                  color2: Colors.lightBlueAccent,
                  soundNumber: 5),
              buildKey(
                  color1: Colors.black,
                  color2: Colors.lightGreen,
                  soundNumber: 6),
              buildKey(
                  color1: Colors.black,
                  color2: Colors.purpleAccent,
                  soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
