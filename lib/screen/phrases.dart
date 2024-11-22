import 'package:flutter/material.dart';
import 'package:german_app/Widget/List_Item.dart';
import 'package:german_app/Widget/Phrases_Item.dart';
import 'package:german_app/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<Phrase> phrases = [
    Phrase(
        Gm_name: 'Guten Morgen',
        En_name: 'Good Morning',
        Sound: 'sounds/phrases/Good moring.m4a'),
    Phrase(
        Gm_name: 'Wie geht es dir?',
        En_name: 'How are you?',
        Sound: 'sounds/phrases/How are you.m4a'),
    Phrase(
        Gm_name: 'Danke schön',
        En_name: 'Thank you',
        Sound: 'sounds/phrases/Thank you.m4a'),
    Phrase(
        Gm_name: 'Auf Wiedersehen',
        En_name: 'Goodbye',
        Sound: 'sounds/phrases/Goodby.m4a'),
    Phrase(
      Gm_name: 'Ich komme aus Ägypten',
      En_name: 'I come from Egypt',
      Sound: 'sounds/phrases/I come from egyp.m4a',
    ),
    Phrase(
      Gm_name: 'Können Sie mir helfen?',
      En_name: 'Can you help me?',
      Sound: 'sounds/phrases/Can you help me.m4a',
    ),
    Phrase(
      Gm_name: 'Ich habe Hunger',
      En_name: 'I am hungry',
      Sound: 'sounds/phrases/Iam hungery.m4a',
    ),
    Phrase(
      Gm_name: 'Ich habe Durst',
      En_name: 'I am thirsty',
      Sound: 'sounds/phrases/Iam thirsty.m4a',
    ),
    Phrase(
      Gm_name: 'Ich liebe dich',
      En_name: 'I love you',
      Sound: 'sounds/phrases/I love you.m4a',
    ),
    Phrase(
      Gm_name: 'Guten Abend',
      En_name: 'Good Evening',
      Sound: 'sounds/phrases/good evening.m4a',
    ),
    Phrase(
      Gm_name: 'Gute Nacht',
      En_name: 'Good Night',
      Sound: 'sounds/phrases/Good niight.m4a',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 70, 74, 70),
        title: const Center(
          child: Text(
            'Phrases',
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontFamily: 'Pacifico'),
          ),
        ),
      ),
      body: ListView(
        children: getPhraseList(phrases),
      ),
    );
  }
}

List<Widget> getPhraseList(List<Phrase> phrases) {
  List<Widget> phraseList = [];
  phraseList.add(
    const SizedBox(
      height: 20,
    ),
  );
  for (int i = 0; i < phrases.length; i++) {
    phraseList.add(PhraseItem(phrase: phrases[i]));
    if (i < phrases.length - 1) {
      phraseList.add(
        const SizedBox(
          height: 20,
        ),
      );
    }
  }
  return phraseList;
}
