import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      // padding: const EdgeInsets.all(.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            height: 65,
            color: Colors.transparent.withOpacity(0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Color(0xff59595B),
                        size: 28,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff59595B),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Column(
                    children: [
                      Icon(
                        CupertinoIcons.compass_fill,
                        color: Color(0xff5a4bed),
                        size: 28,
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff5a4bed),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Column(
                    children: [
                      Icon(
                        CupertinoIcons.bookmark,
                        color: Color(0xff59595B),
                        size: 28,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff59595B),
                        ),
                      ),
                    ],
                  ),
                  tooltip: 'Shopping card',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Column(
                    children: [
                      Icon(
                        CupertinoIcons.arrow_down_to_line_alt,
                        color: Color(0xff59595B),
                        size: 28,
                      ),
                      Text(
                        "Download",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff59595B),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Column(
                    children: [
                      Icon(
                        CupertinoIcons.person,
                        color: Color(0xff59595B),
                        size: 28,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff59595B),
                        ),
                      ),
                    ],
                  ),
                  tooltip: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
