
import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class Prog_lang_Tile extends StatelessWidget {
  final String image_path;
  final String language_name;
  final double height;
  final double width;
  final bool isMobile_len;
  const Prog_lang_Tile(
      {super.key,
      required this.image_path,
      required this.language_name,
      required this.height,
      required this.width,
      required this.isMobile_len});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: mq.width * 0.02,
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image_path), fit: BoxFit.fill)),
        ),
        SizedBox(
          width: mq.width * 0.04,
        ),
        Text(
          language_name,
          style: TextStyle(
              color: Colors.white,
              fontSize: isMobile_len ? mq.width * 0.035: mq.width * 0.015),
        )
      ],
    );
  }
}