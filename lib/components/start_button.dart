import 'package:aibon_app/constans.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Container(
        alignment: Alignment.center,
        child: Text("はじめる",
            style: TextStyle(
                fontSize: 36, color: kFontColor, fontFamily: 'KiwiMaru-M')),
        width: 200,
        height: 70,
        decoration: BoxDecoration(
            color: kButtonColor, borderRadius: BorderRadius.circular(20)));
  }
}
