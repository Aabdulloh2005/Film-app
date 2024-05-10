import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/widgets/comments.dart';
import 'package:homework/widgets/image_container.dart';
import 'package:homework/widgets/three%20_buttons.dart';
import 'package:homework/widgets/userRow.dart';

class SecondPage extends StatelessWidget {
  String image;
  SecondPage({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    double s_width = MediaQuery.of(context).size.width - 40;
    double s_height = MediaQuery.of(context).size.height - 40;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 315, bottom: 130),
              width: double.infinity,
              height: s_height * 0.33,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/$image.jpg"),
                    fit: BoxFit.cover),
              ),
              child: const Icon(
                Icons.cast,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Avatar: The Way of\nWater",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bookmark_add_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            CupertinoIcons.paperplane,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: s_width * 0.1),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.star_half,
                            color: Color.fromARGB(255, 130, 80, 225),
                          ),
                          const Text(
                            "9.8",
                            style: TextStyle(
                              color: Color.fromARGB(255, 130, 80, 225),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Color.fromARGB(255, 130, 80, 225),
                          ),
                          const Text(
                            "2022",
                            style: TextStyle(color: Colors.white),
                          ),
                          ThreeContainers(word: "13+"),
                          ThreeContainers(word: "United States"),
                          ThreeContainers(word: "Subtitle"),
                        ]),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: GetContainer(
                              icon: Icons.play_circle,
                              word: "Play",
                              check: true)),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: GetContainer(
                              icon: Icons.download_for_offline,
                              word: "Download",
                              check: false)),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Genre: Action, Superhero, Romance, Thriller...",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Utenim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat...",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            TextSpan(
                              text: " View More",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff820FE1)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 20,
                      children: [
                        UserRow(
                            images: "assets/images/img.png",
                            title1: "James",
                            title2: "Cameron",
                            title3: "Director"),
                        UserRow(
                            images: "assets/images/img_1.png",
                            title1: "Sam",
                            title2: "Worthington",
                            title3: "Cast"),
                        UserRow(
                            images: "assets/images/img_2.png",
                            title1: "Zoe",
                            title2: "Saldana",
                            title3: "Cast"),
                        UserRow(
                            images: "assets/images/img_3.png",
                            title1: "James",
                            title2: "Cameron",
                            title3: "Director"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const TabBar(
              dividerColor: Color(0xff565656),
              dividerHeight: 2,
              indicatorColor: Color(0xff820FE1),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Trailers",
                    style: TextStyle(color: Color(0xff820FE1), fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "More Like This",
                    style: TextStyle(color: Color(0xff820FE1), fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "Comments",
                    style: TextStyle(color: Color(0xff820FE1), fontSize: 18),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: SingleChildScrollView(
                      child: Expanded(
                        child: Column(
                          children: [
                            TrailerModel(3, image),
                            TrailerModel(1, image),
                            TrailerModel(2, image),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [ScrollingImage(s_height, s_width)],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: SingleChildScrollView(
                      child: Expanded(
                        child: Column(
                          children: [
                            for (int i = 1; i < 4; i++) CommentsWidgets(i),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
