import 'package:aibon_app/components/start_button.dart';
import 'package:aibon_app/constans.dart';
import 'package:aibon_app/database/database.dart';
import 'package:aibon_app/screens/aibon_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as imgLib;

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        //iconTheme: IconThemeData(color: kAppBarColor),
        toolbarHeight: deviceH * 0.1,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/back.png')),
        title: Image.asset('assets/images/subtitle.png'),
        backgroundColor: kAppBarColor,
        //影消す
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 60),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    "こんにちは。",
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 30,
                        fontFamily: 'KiwiMaru-M'),
                  ),
                  Text(
                    "$name担当の",
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 30,
                        fontFamily: 'KiwiMaru-M'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AiBon",
                        style: TextStyle(
                            color: kFontColor,
                            fontSize: 40,
                            fontFamily: 'Rajdhani-M'),
                      ),
                      Text(
                        "〇〇です。",
                        style: TextStyle(
                            color: kFontColor,
                            fontSize: 30,
                            fontFamily: 'KiwiMaru-M'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Image.asset('assets/images/health_aibon.png'),
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
                margin: EdgeInsets.only(bottom: 80),
                child: StartButton(
                  text: 'お話しする',
                  start: false,
                )),
          ),
        ],
      ),
    );
  }
}
