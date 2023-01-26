import 'package:aibon_app/components/start_button.dart';
import 'package:aibon_app/constans.dart';
import 'package:aibon_app/database/database.dart';
import 'package:aibon_app/screens/aibon_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as imgLib;

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Positioned(
              bottom: 240,
              right: 30,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              top: 68,
              right: 60,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              top: 240,
              right: 30,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              bottom: 59,
              right: 30,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              bottom: 200,
              left: 60,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              top: 340,
              left: 30,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              top: 100,
              left: 50,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              bottom: 70,
              left: 10,
              child: Image.asset('assets/images/gatya.png')),
          Positioned(
              top: 200,
              left: 100,
              child: Image.asset('assets/images/gatya.png')),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 130),
                alignment: Alignment.center,
                child: Image.asset('assets/images/title.png'),
              ),
              SizedBox(height: 50),
              Image.asset('assets/images/aibon_title.png'),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AibonListScreen()),
              );
            },
            child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 90),
                child: StartButton(
                  text: 'はじめる',
                  start: true,
                )),
          ),
        ],
      ),
    );
  }
}
