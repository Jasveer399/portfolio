import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/pages/Contact.dart';
import 'package:portfolio/pages/myskills.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/project_tile.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<Widget> navitems = [];
  bool isMobile = false;
  final skill_key = GlobalKey();
   final about_key = GlobalKey();
    final project_key = GlobalKey();
     final contact_key = GlobalKey();
  @override
  void initState() {
   navitems=[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(about_key.currentContext!);
            },
            child: Text(
              "About Me",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skill_key.currentContext!);
            },
            child: Text(
              "My Skills",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(project_key.currentContext!);
            },
            child: Text(
              "Projects",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(contact_key.currentContext!);
            },
            child: Text(
              "Contacts",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            )),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;

    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.95),
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 20, 20, 20),
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        title: Text(
          isMobile ? "" : "Jasveer Singh",
          style: TextStyle(color: Colors.white),
        ),
        actions: isMobile ? null : navitems,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 40 : 60, vertical: isMobile ? 40 : 50),
              child: About_Me(key: about_key,),
            ),
            SizedBox(
              height: isMobile ? mq.height * 0.06 : mq.height * 0.1,
            ),
            MySkills(
              isMobile: isMobile,
              key: skill_key,
            ),
            SizedBox(
              height: isMobile ? mq.height * 0.06 : mq.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: mq.width * 0.06),
                  child: Text(
                    "Projects",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: isMobile ? mq.width * 0.06 : mq.width * 0.03),
                  ),
                ),
              ],
            ),
            Project_Tile(
              key: project_key,
            ),
            SizedBox(
              height: isMobile ? mq.height * 0.02 : mq.height * 0.15,
            ),
            Contact(isMobile: isMobile,key: contact_key,),
          ],
        ),
      ),
    );
  }
}
