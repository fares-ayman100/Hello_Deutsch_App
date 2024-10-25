import 'package:flutter/material.dart';
import 'package:german_app/screen/hom_page.dart';


void main() {
  runApp(const GermanLearn());
}

class GermanLearn extends StatelessWidget {
  const GermanLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home_pages()
    );
  }
}

