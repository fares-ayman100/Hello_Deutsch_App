import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:german_app/models/phrases.dart';

class PhraseItem extends StatelessWidget {
  final Phrase phrase;

  const PhraseItem({super.key, required this.phrase});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer player = AudioPlayer();

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                phrase.Gm_name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                phrase.En_name,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.volume_up, color: Colors.blueGrey),
            iconSize: 30,
            onPressed: () {
              player.play(AssetSource(phrase.Sound));
            },
          ),
        ],
      ),
    );
  }
}
