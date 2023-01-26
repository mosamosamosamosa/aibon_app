import 'package:aibon_app/constans.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    double containerH = 0;
    double containerW = 0;

    if (text.length == 2) {
      containerH = 45;
      containerW = 60;
    } else if (text.length == 3 || text.length == 4) {
      containerH = 45;
      containerW = 90;
    } else if (text.length == 5) {
      containerH = 45;
      containerW = 125;
    } else if (text.length == 6) {
      containerH = 45;
      containerW = 146;
    } else if (text.length == 7) {
      containerH = 45;
      containerW = 155;
    } else if (text.length == 8) {
      containerH = 45;
      containerW = 175;
    } else if (text.length == 9) {
      containerH = 45;
      containerW = 200;
    } else if (text.length == 10) {
      containerH = 45;
      containerW = 225;
    } else if (text.length == 11) {
      containerH = 45;
      containerW = 250;
    } else if (text.length == 12) {
      containerH = 45;
      containerW = 275;
    } else if (text.length == 13) {
      containerH = 45;
      containerW = 295;
    } else if (text.length == 14) {
      containerH = 45;
      containerW = 310;
      //2行になる
    } else if (15 <= text.length && text.length <= 28) {
      containerH = 70;
      containerW = deviceW * 0.8;
    } else if (29 <= text.length && text.length <= 42) {
      containerH = 100;
      containerW = deviceW * 0.8;
    } else if (43 <= text.length && text.length <= 56) {
      containerH = 130;
      containerW = deviceW * 0.8;
    } else if (56 <= text.length && text.length <= 70) {
      containerH = 160;
      containerW = deviceW * 0.8;
    }

    return Row(
      children: [
        SizedBox(width: 5),
        Image.asset('assets/images/talk_icon.png'),
        SizedBox(width: 10),
        Flexible(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: containerH,
                width: containerW,
                decoration: BoxDecoration(
                    color: kAppBarColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Text(
                text,
                style: TextStyle(
                    color: kFontColor, fontSize: 22, fontFamily: 'KiwiMaru-R'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
