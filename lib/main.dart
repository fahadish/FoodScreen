import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/screens/landing_screen.dart';
import 'package:ui/utils/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: colorGreen));
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'UI Design',
      theme: ThemeData(textTheme: defaultText),
      home: LandingScreen(),

    );
  }
}



//import 'package:intl/intl.dart';
//import 'package:slide_to_act/slide_to_act.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:provider/provider.dart';