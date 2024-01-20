import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/prog_lang_Tile.dart';

class Pregram_languages extends StatelessWidget {
  const Pregram_languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: mq.height * 0.04,
          ),
          Text(
            "Programming Languages",
            style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? mq.width * 0.041 : mq.width * 0.018),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.02, vertical: mq.height * 0.02),
            child: Divider(),
          ),
          Prog_lang_Tile(
            isMobile_len: isMobile ? true : false,
            image_path: "assets/images/java.png",
            language_name: "Java  40%",
            height: mq.height * 0.12,
            width: isMobile ? mq.height * 0.12 : mq.width * 0.065,
          ),
          SizedBox(
            height: mq.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Prog_lang_Tile(
                isMobile_len: isMobile ? true : false,
                image_path: "assets/images/js.png",
                language_name: "    JavaScript   30%",
                height: mq.height * 0.06,
                width: isMobile ? mq.height * 0.06 : mq.width * 0.03),
          ),
          SizedBox(
            height: mq.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Prog_lang_Tile(
                isMobile_len: isMobile ? true : false,
                image_path: "assets/images/dart.png",
                language_name: "    Dart  30%",
                height: mq.height * 0.06,
                width: isMobile ? mq.height * 0.06 : mq.width * 0.03),
          )
        ],
      );
  }
}