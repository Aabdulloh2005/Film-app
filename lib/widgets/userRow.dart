import 'package:flutter/material.dart';

class UserRow extends StatelessWidget {
  const UserRow(
      {super.key,
      required this.images,
      required this.title1,
      required this.title2,
      required this.title3});

  final String images;
  final String title1;
  final String title2;
  final String title3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            images,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(title2,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            Text(title3,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ],
        )
      ],
    );
  }
}

class GetContainer extends StatelessWidget {
  bool check;
  String word;
  IconData icon;
  GetContainer(
      {required this.word, required this.icon, required this.check, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color.fromARGB(255, 130, 100, 225),
        ),
        color: check ? const Color.fromARGB(255, 130, 100, 225) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color:
                check ? Colors.white : const Color.fromARGB(255, 130, 100, 225),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            word,
            style: TextStyle(
                fontSize: 16,
                color: check
                    ? Colors.white
                    : const Color.fromARGB(255, 130, 100, 225)),
          ),
        ],
      ),
    );
  }
}

class TrailerModel extends StatelessWidget {
  int i;
  String image;
  TrailerModel(this.i, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/$image.jpg"),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trailer $i: ${i == 3 ? "Final" : ""}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "1m 45s",
              style: TextStyle(
                  color: Color(0xffC1C1C1),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 11,
            ),
            const Card(
              color: Color(0xff28191E),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                child: Text(
                  "Update",
                  style: TextStyle(color: Color(0xff820FE1), fontSize: 13),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
