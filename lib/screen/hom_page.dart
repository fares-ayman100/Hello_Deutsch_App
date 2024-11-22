import 'package:flutter/material.dart';
import 'package:german_app/Widget/category.dart';
import 'package:german_app/screen/colors.dart';
import 'package:german_app/screen/family_members.dart';
import 'package:german_app/screen/Numbers.dart';
import 'package:german_app/screen/Phrases.dart';


class Home_pages extends StatelessWidget {
  const Home_pages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 70, 74, 70),
        title: const Center(
          child: Text(
            "Hallo Deutsch",
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 35, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          ClipRRect(
            child: Category(
              OnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NumbersPage();
                    },
                  ),
                );
              },
              text: 'Numbers',
              color: const Color(0xFFA7A78D),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Category(
            OnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
            text: 'Family Members',
            color: const Color(0xFFA7A78D),
          ),
          const SizedBox(
            height: 14,
          ),
          Category(
            OnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorPage();
                  },
                ),
              );
            },
            text: 'Colors',
            color: const Color(0xFFA7A78D),
          ),
          const SizedBox(
            height: 14,
          ),
          Category(
            OnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
            
            text: 'Phrases',
            color: const Color(0xFFA7A78D),
          )
        ],
      ),
    );
  }
}
