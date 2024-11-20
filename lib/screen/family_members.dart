import 'package:flutter/material.dart';
import 'package:german_app/component/item.dart';
import 'package:german_app/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});
  List<Number> numbers = [
    Number(
        Image: 'assets/images/family_members/family_father.png',
        Gm_name: 'Vater',
        En_name: 'Father',
        Sound: 'sounds/family_members/Father.m4a'),
    Number(
        Image: 'assets/images/family_members/family_mother.png',
        Gm_name: 'Mutter',
        En_name: 'Mother',
        Sound: 'sounds/family_members/mother.m4a'),
    Number(
        Image: 'assets/images/family_members/family_grandfather.png',
        Gm_name: 'Großvater',
        En_name: 'Grand Father',
        Sound: 'sounds/family_members/Grand Father.m4a'),
    Number(
        Image: 'assets/images/family_members/family_grandmother.png',
        Gm_name: 'Großmutter',
        En_name: 'Grand Mother',
        Sound: 'sounds/family_members/Grand mother.m4a'),
    Number(
        Image: 'assets/images/family_members/family_older_brother.png',
        Gm_name: 'Älterer Bruder',
        En_name: 'Older Brother',
        Sound: 'sounds/family_members/Older broter.m4a'),
    Number(
        Image: 'assets/images/family_members/family_son.png',
        Gm_name: 'Sohn',
        En_name: ' Son',
        Sound: 'sounds/family_members/Son.m4a'),
    Number(
        Image: 'assets/images/family_members/family_younger_brother.png',
        Gm_name: 'Jüngerer Bruder',
        En_name: 'Younger Brother',
        Sound: 'sounds/family_members/Yonger Broter.m4a'),
    Number(
        Image: 'assets/images/family_members/family_younger_sister.png',
        Gm_name: 'Schwester',
        En_name: 'Sister',
        Sound: 'sounds/family_members/Yonger sister.m4a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 70, 74, 70),
        title: const Center(
          child: Text(
            'Family Members',
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
