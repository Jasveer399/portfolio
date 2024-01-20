import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/prog_lang_Tile.dart';

class Other_Skills extends StatelessWidget {
  const Other_Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: mq.height * 0.04,
          ),
          Text(
            "Other Skills",
            style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? mq.width * 0.041 : mq.width * 0.018),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.02, vertical: mq.height * 0.02),
            child: Divider(),
          ),
           SizedBox(
            height: mq.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Prog_lang_Tile(
                isMobile_len: isMobile ? true : false,
                image_path: "assets/images/firebase.png",
                language_name: "  Firebase   40%",
                height: mq.height * 0.06,
                width: isMobile ? mq.height * 0.06 : mq.width * 0.03),
          ),
          SizedBox(
            height: mq.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Prog_lang_Tile(
                isMobile_len: isMobile ? true : false,
                image_path: "assets/images/dsa.png",
                language_name: "  DSA   50%",
                height: mq.height * 0.06,
                width: isMobile ? mq.height * 0.06 : mq.width * 0.03),
          ),
      ],
    );
  }
}