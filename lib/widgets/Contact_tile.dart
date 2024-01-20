import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/main.dart';

class Contact_tile extends StatefulWidget {
  const Contact_tile({
    super.key,
    required this.isMobile,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.width,
    required this.onTap,
  });
  final IconData icon;
  final bool isMobile;
  final String title;
  final String subtitle;
  final double width;
  final VoidCallback onTap;

  @override
  State<Contact_tile> createState() => _Contact_tileState();
}

class _Contact_tileState extends State<Contact_tile> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          ishover = val;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: widget.width,
        height: widget.isMobile ? mq.height * 0.06 : mq.height * 0.08,
        decoration: BoxDecoration(
            color: ishover ? Color.fromARGB(255, 34, 34, 34) : Colors.black,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SizedBox(
              width: mq.width * 0.01,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: widget.isMobile ? 4 : 8,
                    horizontal: widget.isMobile ? 6 : 12),
                child: FaIcon(
                  widget.icon,
                  size: isMobile ? mq.width * 0.03 : mq.width * 0.018,
                ),
              ),
            ),
            SizedBox(
              width: mq.width * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? mq.width * 0.02: mq.width * 0.013,fontWeight: FontWeight.w700),
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? mq.width * 0.018 : mq.width * 0.011),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
