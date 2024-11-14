import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const SoundBoard());

Expanded engine(int A, int B) {
  final player = AudioPlayer(); // Initialize the player outside onTap

  return Expanded(
    child: GestureDetector(
      onTap: () {
        player.play(AssetSource('cylinder_$A.wav')
        );
      },
      child: Image.asset('assets/engine_$B.jpg'),
    ),
  );
}

class SoundBoard extends StatelessWidget {
  const SoundBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Engine Soundboard'),
          backgroundColor: Colors.black26,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                engine(1, 1),
                engine(2, 2),
                engine(3, 3),
                engine(4, 4),
                engine(5, 5),
                engine(6, 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
