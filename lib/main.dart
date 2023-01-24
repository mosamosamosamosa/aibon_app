import 'package:aibon_app/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/', //初期画面

      // 遷移する画面を定義する
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => StartScreen(),

        // '/home': (BuildContext context) => HomeDriverScreen(
        //       busList: ["ああ"],
        //     ),
        // '/signup': (BuildContext context) => ChoseScreen(),
      },
    );
  }
}
