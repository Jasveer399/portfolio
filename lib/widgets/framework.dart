import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/prog_lang_Tile.dart';

class Frame_works extends StatelessWidget {
  const Frame_works({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: mq.height * 0.04,
          ),
          Text(
            "FrameWorks",
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
                image_path: "assets/images/flutter.png",
                language_name: "  Flutter   50%",
                height: mq.height * 0.05,
                width: isMobile ? mq.height * 0.06 : mq.width * 0.03),
          ),
          SizedBox(
            height: mq.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Prog_lang_Tile(
                isMobile_len: isMobile ? true : false,
                image_path: "assets/images/nodejs.png",
                language_name: "  Node.js   20%",
                height: mq.height * 0.06,
                width: isMobile ? mq.height * 0.06 : mq.width * 0.03),
          ),
      ],
    );
  }
}