import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentsWidgets extends StatelessWidget {
  int i;
  CommentsWidgets(this.i, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "24.6K Comments",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "See All",
              style: TextStyle(
                color: Color(0xff820FE1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "assets/images/img_$i.png",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "John Doe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_circle,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Utenim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat...",
          style: TextStyle(
              color: Color.fromARGB(255, 210, 210, 210), fontSize: 12),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
              ),
            ),
            const Text(
              "938",
              style: TextStyle(
                  color: Color.fromARGB(255, 210, 210, 210), fontSize: 14),
            ),
            const SizedBox(
              width: 30,
            ),
            const Text(
              "3 days ago",
              style: TextStyle(
                  color: Color.fromARGB(255, 161, 161, 161), fontSize: 14),
            ),
          ],
        )
      ],
    );
  }
}
