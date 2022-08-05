import 'package:flutter/material.dart';

class Navbaractive extends StatelessWidget {
  double screenWidth;
  Navbaractive({Key? key, required this.screenWidth}) : super(key: key);
  // double screenWidth;
  // Navbaractive({
  //   required this.screenWidth,
  // });

  @override
  Widget build(BuildContext context) {
    // double screenWidthsize = screenWidth;
    return Container(
      width: screenWidth,
      height: 50,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.card_travel,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.heart_broken,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
