import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
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
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  child: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal),
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
