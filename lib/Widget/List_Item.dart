import 'package:flutter/material.dart';
import 'package:german_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:german_app/models/phrases.dart';

class List_Item extends StatelessWidget {
  List_Item({super.key, required this.number});
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

