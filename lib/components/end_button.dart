import 'package:aibon_app/constans.dart';
import 'package:flutter/material.dart';

class EndButton extends StatelessWidget {
  const EndButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD9D9D9)),
        ),
        const Text(
          "終了",
          style: TextStyle(
              color: kFontColor, fontSize: 24, fontFamily: 'KiwiMaru-M'),
        ),
      ],
    );
  }
}
