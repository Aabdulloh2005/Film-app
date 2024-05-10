import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xff1E1E28),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff59595B),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search something here",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff59595B)),
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset("assets/images/filter.png",
                    height: 52, width: 52, color: Colors.grey),
              ],
            );
  }
}