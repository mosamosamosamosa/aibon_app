import 'package:aibon_app/components/aibon_item.dart';
import 'package:aibon_app/components/aibon_item2.dart';
import 'package:aibon_app/constans.dart';
import 'package:aibon_app/database/database.dart';
import 'package:aibon_app/screens/cook/cook_screen.dart';
import 'package:aibon_app/screens/health/health_screen.dart';
import 'package:aibon_app/screens/talk/talk_screen.dart';
import 'package:flutter/material.dart';

class AibonListScreen extends StatefulWidget {
  AibonListScreen({Key? key}) : super(key: key);

  // createState()　で"State"（Stateを継承したクラス）を返す
  @override
  _AibonListScreenState createState() => _AibonListScreenState();
}

class _AibonListScreenState extends State<AibonListScreen> {
  late bool pushable;

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        //iconTheme: IconThemeData(color: kAppBarColor),
        toolbarHeight: deviceH * 0.1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "HOME",
          style: TextStyle(
              color: kFontColor, fontSize: 40, fontFamily: 'Rajdhani-M'),
        ),
        backgroundColor: kAppBarColor,
        //影消す
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TalkScreen()),
                  );
                },
                child: const AibonItem(
                  example: '簡単な日常会話が\nできます',
                  name: '雑談',
                  image: 'assets/images/talk.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CookScreen()),
                  );
                },
                child: AibonItem(
                  example: '料理・食事などに\n詳しいAI',
                  name: 'お料理',
                  image: 'assets/images/cook.png',
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: aibon_list.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HealthScreen(name: aibon_list[index].name)),
                        );
                      },
                      child: AibonItem2(
                        name: aibon_list[index].name,
                        image: aibon_list[index].image,
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
