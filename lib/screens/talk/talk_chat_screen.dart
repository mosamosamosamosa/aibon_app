import 'dart:async';

import 'package:aibon_app/components/chat_item.dart';
import 'package:aibon_app/components/end_button.dart';
import 'package:aibon_app/components/mychat_item.dart';
import 'package:aibon_app/components/start_button.dart';
import 'package:aibon_app/constans.dart';
import 'package:aibon_app/database/database.dart';
import 'package:aibon_app/screens/aibon_list_screen.dart';
import 'package:aibon_app/screens/end_modal.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TalkChatScreen extends StatefulWidget {
  TalkChatScreen({
    Key? key,
  }) : super(key: key);

  // createState()　で"State"（Stateを継承したクラス）を返す
  @override
  _TalkChatScreenState createState() => _TalkChatScreenState();
}

class _TalkChatScreenState extends State<TalkChatScreen> {
  final messageTextInputCtl = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  ScrollController _scrollController = new ScrollController();
  var random = new Random();

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent +
          MediaQuery.of(context).viewInsets.bottom,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }

  List<String> myChat = [];
  List<String> aibonChat = ["こんにちは。お話しよう"];
  String text = '';
  List<String> aibonCandi = [
    "ですます",
    "なのかな",
    "これ",
    "か"
        "なぜか",
    "ありがとう",
    "うれしいです"
        "かなしい"
  ];

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;

    double containerW = 200;
    double containerH = 45;

    int i = 1;

    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          //iconTheme: IconThemeData(color: kAppBarColor),
          toolbarHeight: deviceH * 0.1,
          centerTitle: false,
          automaticallyImplyLeading: false,

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
          actions: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => EndModal(),
                      );
                    },
                    child: EndButton()),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ],
          backgroundColor: kAppBarColor,
          //影消す
          elevation: 0.0,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                    itemCount: myChat.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 20),
                          myChat == []
                              ? Container()
                              : Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: MychatItem(text: myChat[index])),
                                ),
                          SizedBox(height: 10),
                          ChatItem(text: aibonChat[index]),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    color: kAppBarColor,
                    child: Column(children: <Widget>[
                      Form(
                          key: _formKey,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Flexible(
                                    child: TextFormField(
                                  controller: messageTextInputCtl,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 5,
                                  minLines: 1,
                                  decoration: const InputDecoration(
                                    hintText: 'メッセージを入力してください',
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      text = value;
                                    });
                                  },
                                  onTap: () {
                                    // タイマーを入れてキーボード分スクロールする様に
                                    Timer(
                                      Duration(milliseconds: 200),
                                      _scrollToBottom,
                                    );
                                  },
                                )),
                                Material(
                                  color: kAppBarColor,
                                  child: Center(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: kBackgroundColor,
                                        shape: CircleBorder(),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.send),
                                        color: Colors.white,
                                        onPressed: () {
                                          messageTextInputCtl.clear();
                                          print("送信");
                                          setState(() {
                                            myChat.add(text);
                                            if (i % 3 == 0) {
                                              aibonChat.add(text +
                                                  aibonCandi[random.nextInt(
                                                      aibonCandi.length)]);
                                            } else if (i % 3 == 1) {
                                              aibonChat.add(aibonCandi[
                                                      random.nextInt(
                                                          aibonCandi.length)] +
                                                  text);
                                            } else if (i % 3 == 2) {
                                              aibonChat.add(aibonCandi[random
                                                  .nextInt(aibonCandi.length)]);
                                            }
                                          });
                                          print(myChat);
                                          // FocusScope.of(context).unfocus();
                                          // messageTextInputCtl.clear();
                                          // Timer(
                                          //   Duration(milliseconds: 200),
                                          //   _scrollToBottom,
                                          // );
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ])),
                    ])),
              ],
            )
          ],
        ));
  }
}
