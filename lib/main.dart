import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color color, int soundno, Text text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundno);
        },
        child: text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundno: 1, text: Text('Do')),
              buildkey(color: Colors.orange, soundno: 2, text: Text('Re')),
              buildkey(color: Colors.yellow, soundno: 3, text: Text('Mi')),
              buildkey(color: Colors.green, soundno: 4, text: Text('Fa')),
              buildkey(color: Colors.blue, soundno: 5, text: Text('So')),
              buildkey(color: Colors.indigo, soundno: 6, text: Text('La')),
              buildkey(color: Colors.deepPurple, soundno: 7, text: Text('Ti')),
            ],
          ),
        ),
      ),
    );
  }
}
