import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/common_widgets.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  bool isMobile = false;
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * 0.8,
      width: mq.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20)),
      child: isMobile
          ? SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  Text(
                    "About Me",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: mq.width * 0.06),
                  ),
                  SizedBox(
                    height: mq.height * 0.06,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mq.width * 0.07, vertical: 20),
                    child: Text(
                      Common.about_me,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: mq.width * 0.032,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding:
                         EdgeInsets.symmetric(vertical: mq.height * 0.03),
                    child: Container(
                        height: mq.height * 0.7,
                        width: mq.width * 0.5,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: mq.height * 0.04,
                              ),
                              Text(
                                "About Me",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: mq.width * 0.035),
                              ),
                              SizedBox(
                                height: mq.height * 0.06,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: mq.width * 0.07),
                                child: Text(
                                  Common.about_me,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: mq.width * 0.013,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: mq.height * 0.04,
                        bottom: mq.height * 0.04,
                        left: mq.width * 0.04),
                    child: Container(
                      height: mq.height * 0.55,
                      width: mq.width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        image: DecorationImage(
                          //image: NetworkImage("https://i.ibb.co/0m6cQd6/p.jpg"),
                          image: AssetImage("assets/images/p.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
