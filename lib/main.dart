import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBody();
  }
}

Widget GetBody() {
  return MaterialApp(
      home: Scaffold(
    body: SafeArea(
      child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(image: AssetImage("assets/drum.png"))),
          child: Center(
            child: Center(
              child: ClickScrean(),
            ),
          )),
    ),
  ));
}

Widget ClickScrean() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      
                      play_sound('assets_h1.wav');
                    },
                    child: Text(""))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                     
                      play_sound('assets_k1.wav');
                    },
                    child: Text(""))),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                     
                      play_sound('assets_k2.wav');
                    },
                    child: Text(""))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                    
                      play_sound('assets_c1.wav');
                    },
                    child: Text(""))),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  play_sound('assets_c2.wav');
                },
                child: Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(""),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

play_sound(String sound) {
  final player = AudioPlayer();
  player.play(AssetSource(sound));
}
