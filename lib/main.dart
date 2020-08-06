import 'package:flutter/material.dart';
// to use the AudioCache object which allows us to play files from assets
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // function that allows you to play an audio file with an int for the file num
  void playSound(int fileNum) {
    // create the AudioCache object which allows you to play an assets audio file
    final player = AudioCache();
    // tell the player to play the audio file
    player.play('note$fileNum.wav');
  }

  // function that creates an Expanded, FlatButton widget that will have a color
  // and int for the playSound function
  Expanded createKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // creating all the widgets with the function created earlier
              createKey(color: Colors.red, soundNum: 1),
              createKey(color: Colors.orange, soundNum: 2),
              createKey(color: Colors.yellow, soundNum: 3),
              createKey(color: Colors.green, soundNum: 4),
              createKey(color: Colors.blue, soundNum: 5),
              createKey(color: Colors.purple, soundNum: 6),
              createKey(color: Colors.deepPurple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
