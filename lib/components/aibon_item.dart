import 'package:aibon_app/constans.dart';
import 'package:flutter/material.dart';

class AibonItem extends StatelessWidget {
  const AibonItem(
      {Key? key,
      required this.name,
      required this.image,
      required this.example})
      : super(key: key);

  final String name;
  final String image;
  final String example;

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            width: 157,
            height: 197,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: kAppBarColor,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: kFontColor, fontSize: 24, fontFamily: 'KiwiMaru-M'),
            ),
            Image.asset(image),
            Text(
              example,
              style: TextStyle(
                  color: kFontColor, fontSize: 14, fontFamily: 'KiwiMaru-R'),
            ),
          ],
        ),
        Positioned(top: -15, child: Image.asset('assets/images/mask.png'))
      ],
    );
  }
}
