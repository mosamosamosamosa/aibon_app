import 'package:aibon_app/components/start_button.dart';
import 'package:aibon_app/constans.dart';
import 'package:aibon_app/database/database.dart';
import 'package:aibon_app/screens/aibon_list_screen.dart';
import 'package:aibon_app/screens/talk/talk_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as imgLib;

class TalkScreen extends StatelessWidget {
  const TalkScreen({Key? key}) : super(key: key);

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
        title: Row(
          children: [
            Text(
              "雑談",
              style: TextStyle(
                  color: kFontColor, fontSize: 30, fontFamily: 'KiwiMaru-M'),
            ),
            Positioned(
                top: 10, child: Image.asset('assets/images/subtitle.png')),
          ],
        ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "雑談担当の",
                        style: TextStyle(
                            color: kFontColor,
                            fontSize: 30,
                            fontFamily: 'KiwiMaru-M'),
                      ),
                      Text(
                        "AiBon",
                        style: TextStyle(
                            color: kFontColor,
                            fontSize: 40,
                            fontFamily: 'Rajdhani-M'),
                      ),
                    ],
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
              SizedBox(height: 30),
              Image.asset('assets/images/talk_aibon.png'),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TalkChatScreen()),
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
