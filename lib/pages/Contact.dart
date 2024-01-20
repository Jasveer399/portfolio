import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/Contact_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({
    super.key,
    required this.isMobile,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
        mq = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: mq.width * 0.06),
          child: Text(
            "Contact",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: isMobile ? mq.width * 0.06 : mq.width * 0.03),
          ),
        ),
        SizedBox(
          height: isMobile ? mq.height * 0.02 : mq.height * 0.06,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * 0.02),
          child: Container(
            width: mq.width,
            height: mq.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Contact_tile(
                      onTap: () {
                        const link = "https://github.com/Jasveer399";
                        launchUrl(Uri.parse(link),
                            mode: LaunchMode.inAppBrowserView);
                      },
                      title: "GitHub",
                      subtitle: "Jasveer399",
                      isMobile: isMobile,
                      icon: FontAwesomeIcons.githubAlt,
                      width:
                          isMobile ? mq.width * 0.3 : mq.width * 0.18,
                    ),
                    Contact_tile(
                      onTap: () {
                        const link =
                            "https://www.linkedin.com/in/jasveer-singh-960258249/";
                        launchUrl(Uri.parse(link),
                            mode: LaunchMode.inAppBrowserView);
                      },
                      title: "Linkdin",
                      subtitle: "Jasveer Singh",
                      isMobile: isMobile,
                      icon: FontAwesomeIcons.linkedin,
                      width:
                          isMobile ? mq.width * 0.3 : mq.width * 0.18,
                    ),
                    Contact_tile(
                      onTap: () {
                        const link =
                            "https://twitter.com/jassi93540108";
                        launchUrl(Uri.parse(link),
                            mode: LaunchMode.inAppBrowserView);
                      },
                      title: "Twiter",
                      subtitle: "jassi",
                      isMobile: isMobile,
                      icon: FontAwesomeIcons.xTwitter,
                      width:
                          isMobile ? mq.width * 0.3 : mq.width * 0.18,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Contact_tile(
                      onTap: () {
                        final Uri email_link = Uri(
                          scheme: 'mailto',
                          path: "jasveersingh182002@gmail.com",
                        );
                        launchUrl(email_link);
                      },
                      title: "Email",
                      subtitle: "Jasveersingh182002@gmail.com",
                      isMobile: isMobile,
                      icon: Icons.email,
                      width:
                          isMobile ? mq.width * 0.4 : mq.width * 0.26,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Contact_tile(
                      onTap: () {},
                      title: "Phone no",
                      subtitle: "+91 94647-55738",
                      isMobile: isMobile,
                      icon: FontAwesomeIcons.phone,
                      width:
                          isMobile ? mq.width * 0.3 : mq.width * 0.18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
