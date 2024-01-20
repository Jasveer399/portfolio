import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
late Size mq;
bool isMobile=false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        canvasColor: Colors.black,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home_Page(),
    );
  }
}

