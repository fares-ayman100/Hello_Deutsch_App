import 'package:flutter/material.dart';
import 'package:german_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:german_app/models/phrases.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.number});
  Number number;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: const Color(0xFFA7A78D),
        height: 100,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(number.Image!)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ClipRRect(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number.Gm_name!,
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      number.En_name!,
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                player.play(AssetSource(number.Sound));
              },
              icon: const Icon(
                Icons.volume_up,
                color: Colors.black,
                size: 35,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
            )
          ],
        ),
      ),
    );
  }
}

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
