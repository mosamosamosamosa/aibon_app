import 'package:aibon_app/constans.dart';
import 'package:flutter/material.dart';

class AibonItem2 extends StatelessWidget {
  const AibonItem2({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    double deviceH = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 70,
          width: 315,
          decoration: BoxDecoration(
              color: kAppBarColor, borderRadius: BorderRadius.circular(10)),
        ),
        Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Image.asset(image),
            SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: TextStyle(
                  color: kFontColor, fontSize: 24, fontFamily: 'KiwiMaru-M'),
            ),
          ],
        ),
      ],
    );
  }
}
