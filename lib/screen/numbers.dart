import 'package:flutter/material.dart';
import 'package:german_app/Widget/List_Item.dart';
import 'package:german_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  List<Number> numbers = [
    Number(
        Image: 'assets/images/numbers/number_one.png',
        Gm_name: 'Eins',
        En_name: 'One',
        Sound: 'sounds/numbers/Eins.m4a'),
    Number(
        Image: 'assets/images/numbers/number_two.png',
        Gm_name: 'Zwei',
        En_name: 'Two',
        Sound: 'sounds/numbers/zwei.m4a'),
    Number(
        Image: 'assets/images/numbers/number_three.png',
        Gm_name: 'Drei',
        En_name: 'Three',
        Sound: 'sounds/numbers/Drei.m4a'),
    Number(
        Image: 'assets/images/numbers/number_four.png',
        Gm_name: 'Vier',
        En_name: 'Four',
        Sound: 'sounds/numbers/vier.m4a'),
    Number(
        Image: 'assets/images/numbers/number_five.png',
        Gm_name: 'Fünf',
        En_name: 'Five',
        Sound: 'sounds/numbers/funf.m4a'),
    Number(
        Image: 'assets/images/numbers/number_six.png',
        Gm_name: 'Sechs',
        En_name: 'Six',
        Sound: 'sounds/numbers/Sechs.m4a'),
    Number(
        Image: 'assets/images/numbers/number_seven.png',
        Gm_name: 'Sieben',
        En_name: 'Seven',
        Sound: 'sounds/numbers/Sieben.m4a'),
    Number(
        Image: 'assets/images/numbers/number_eight.png',
        Gm_name: 'Acht',
        En_name: 'Eight',
        Sound: 'sounds/numbers/Acht.m4a'),
    Number(
        Image: 'assets/images/numbers/number_nine.png',
        Gm_name: 'Neun',
        En_name: 'Nine',
        Sound: 'sounds/numbers/Neun.m4a'),
    Number(
        Image: 'assets/images/numbers/number_ten.png',
        Gm_name: 'Zehn',
        En_name: 'Ten',
        Sound: 'sounds/numbers/Zehn.m4a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 70, 74, 70),
        title: const Center(
          child: Text(
            "Numbers",
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontFamily: 'Pacifico'),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: List_Item(number: numbers[index]),
            );
          }),
    );
  }
}
