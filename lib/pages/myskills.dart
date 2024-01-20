
import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/framework.dart';
import 'package:portfolio/widgets/other.dart';
import 'package:portfolio/widgets/program_language.dart';
import 'package:portfolio/widgets/skill_cart.dart';

class MySkills extends StatelessWidget {
  const MySkills({
    super.key,
    required this.isMobile,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: mq.width * 0.06),
          child: Text(
            "My Skills",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: isMobile ? mq.width * 0.06 : mq.width * 0.03),
          ),
        ),
        SizedBox(
          height: isMobile ? mq.height * 0.05 : mq.height * 0.05,
        ),
        isMobile
            ? Column(
                children: [
                  Skill_cart(
                    child: Pregram_languages(),
                  ),
                  SizedBox(
                    height: mq.height * 0.06,
                  ),
                  Skill_cart(
                    child: Frame_works(),
                  ),
                  SizedBox(
                    height: mq.height * 0.06,
                  ),
                  Skill_cart(
                    child: Other_Skills(),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Skill_cart(
                    child: Pregram_languages(),
                  ),
                  Skill_cart(
                    child: Frame_works(),
                  ),
                  Skill_cart(
                    child: Other_Skills(),
                  ),
                ],
              ),
      ],
    );
  }
}