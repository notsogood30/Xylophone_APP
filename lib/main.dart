import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void player(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }
   Expanded buildkey({Color color,int soundnumber})
   {
     return Expanded(
       child: FlatButton(
         onPressed: () {
           player(soundnumber);
         },
         color: color,
       ),
     );
   }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildkey(color: Colors.red, soundnumber: 1),
                  buildkey(color: Colors.orange, soundnumber: 2),
                  buildkey(color: Colors.yellowAccent, soundnumber: 3),
                  buildkey(color: Colors.lightGreenAccent, soundnumber: 4),
                  buildkey(color: Colors.teal, soundnumber: 5),
                  buildkey(color: Colors.lightBlueAccent, soundnumber: 6),
                  buildkey(color: Colors.purple, soundnumber: 7),
            ])),
      ),
    );
  }
}
