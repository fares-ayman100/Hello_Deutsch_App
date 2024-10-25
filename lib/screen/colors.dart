import 'package:flutter/material.dart';
import 'package:german_app/component/item.dart';
import 'package:german_app/models/number.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  List<Number> numbers = [
    Number(
        Image: 'assets/images/colors/color_white.png',
        Gm_name: 'Weiß',
        En_name: 'White',
        Sound: 'sounds/colors/Black.m4a'),
    Number(
        Image: 'assets/images/colors/yellow.png',
        Gm_name: 'Gelb',
        En_name: 'Yellow',
        Sound: 'sounds/colors/yellow.m4a'),
    Number(
        Image: 'assets/images/colors/color_red.png',
        Gm_name: 'Rot',
        En_name: 'Red',
        Sound: 'sounds/colors/red.m4a'),
    Number(
        Image: 'assets/images/colors/color_green.png',
        Gm_name: 'Grün',
        En_name: 'Green',
        Sound: 'sounds/colors/green.m4a'),
    Number(
        Image: 'assets/images/colors/color_gray.png',
        Gm_name: 'Grau',
        En_name: 'Gray',
        Sound: 'sounds/colors/Gray.m4a'),
    Number(
        Image: 'assets/images/colors/color_dusty_yellow.png',
        Gm_name: 'Staubiges Gelb',
        En_name: 'Dusty Yellow',
        Sound: 'sounds/colors/dusty yellow.m4a'),
    Number(
        Image: 'assets/images/colors/color_brown.png',
        Gm_name: 'Braun',
        En_name: 'Brown',
        Sound: 'sounds/colors/Brawn.m4a'),
    Number(
        Image: 'assets/images/colors/color_black.png',
        Gm_name: 'Schwarz',
        En_name: 'Black',
        Sound: 'sounds/colors/Black.m4a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 70, 74, 70),
        title: const Center(
          child: Text(
            'Colors',
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontFamily: 'Pacifico'),
          ),
        ),
      ),
      body: ListView(
        children: getList(numbers),
      ),
    );
  }
}

List<Widget> getList(List<Number> numbers) {
  List<Widget> itemList = [];
  itemList.add(
    const SizedBox(
      height: 20,
    ),
  );
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(Item(number: numbers[i]));
    if (i < numbers.length - 1) {
      itemList.add(
        const SizedBox(
          height: 20,
        ),
      );
    }
  }
  return itemList;
}
