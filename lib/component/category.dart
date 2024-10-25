import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.OnTap});
  String? text;
  Color? color;
  Function()? OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Container(
          padding: const EdgeInsets.only(left: 35),
          alignment: Alignment.centerLeft,
          height: 70,
          width: double.infinity,
          color: color,
          child: Text(
            text!,
            style: const TextStyle(fontSize: 33, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
