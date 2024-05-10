import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homework/screens/second_page.dart';

class ScrollingImage extends StatelessWidget {
  double s_height;
  double s_width;
  ScrollingImage(this.s_height, this.s_width, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            for (int i = 1; i < 21; i++)
              ImageContainer(s_height, s_width, i: i),
          ],
        ),
      ),
    );
  }
}


class ImageContainer extends StatelessWidget {
  double s_height;
  double s_width;
  int i;
  ImageContainer(this.s_height, this.s_width, {required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx){ return SecondPage(image: "img$i",);}));
      },
      child: Container(
        width: s_width * 0.5 - 20,
        height: s_height * 0.27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("assets/images/img$i.jpg"), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, top: 15),
              height: s_height * 0.026,
              width: s_width * 0.11,
              decoration: BoxDecoration(
                  color: const Color(0xff820FE1),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "9.${Random().nextInt(9)}",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
