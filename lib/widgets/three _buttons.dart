import 'package:flutter/cupertino.dart';

class ThreeContainers extends StatelessWidget {
  String word;
  ThreeContainers({required this.word, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: const Color.fromARGB(255, 130, 80, 225), width: 1.3)),
      child: Text(
        word,
        style: const TextStyle(
            color: Color.fromARGB(255, 130, 80, 225),
            fontSize: 11,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
