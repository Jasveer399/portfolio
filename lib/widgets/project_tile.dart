import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class Project_Tile extends StatefulWidget {
  Project_Tile({super.key});

  @override
  State<Project_Tile> createState() => _Project_TileState();
}

class _Project_TileState extends State<Project_Tile> {
  final List<String> images = [
    "assets/images/project4.jpg",
    "assets/images/project2.jpg",
    "assets/images/project3.jpg",
  ];

  final List<String> project_name = [
    "Space_x",
    "Task-Track",
    "ExamPrep",
  ];

  int _current = 0;

  List<Widget> generateimagestile(Size mq, BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(mq.height * 0.06),
              //color: Colors.white,
              //height: mq.height * 0.3,
              child: Padding(
                padding: EdgeInsets.only(
                  top: isMobile ? 0 : mq.height * 0.0,
                  bottom: isMobile ? 0 : mq.height * 0.0,
                ),
                child: Image.asset(
                  element,
                  fit: BoxFit.cover,
                  height: mq.height * 0.3,
                  width: mq.width * 0.7,
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Container(
      //color: Colors.white,
      //width:isMobile?mq.width: mq.width*0.75,
      height:isMobile?mq.height*0.45: mq.height*0.8,
      padding: EdgeInsets.only(top: mq.height*0.04,),
      //margin: EdgeInsets.only( bottom: mq.height * 0.8),
      child: Stack(
        children: [
          CarouselSlider(
              items: generateimagestile(mq, context),
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 18 / 7,
                  onPageChanged: (index, other) {
                    setState(() {
                      _current = index;
                    });
                  })),
          AspectRatio(
            aspectRatio: 18 /7,
            child: Center(
              child: Text(
                project_name[_current],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: mq.width * 0.03,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
