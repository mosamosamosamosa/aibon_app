import 'package:aibon_app/constans.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({Key? key, required this.text, required this.start})
      : super(key: key);

  final String text;
  final bool start;
  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Container(
        alignment: Alignment.center,
        // ignore: sort_child_properties_last
        child: start
            ? Text(text,
                style: TextStyle(
                    fontSize: 36, color: kFontColor, fontFamily: 'KiwiMaru-M'))
            : Text(text,
                style: TextStyle(
                    fontSize: 30, color: kFontColor, fontFamily: 'KiwiMaru-M')),
        width: 200,
        height: 70,
        decoration: BoxDecoration(
            color: kButtonColor, borderRadius: BorderRadius.circular(20)));
  }
}
