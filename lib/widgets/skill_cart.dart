import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class Skill_cart extends StatelessWidget {
  final Widget child;
  const Skill_cart({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Container(
      height: mq.height * 0.55,
      width: isMobile ? mq.width * 0.6 : mq.width * 0.27,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}


