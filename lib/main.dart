import 'package:flutter/material.dart';
import 'package:flutter_highspeed_railway/about/about.dart';
import 'package:flutter_highspeed_railway/menu/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // 去掉DEBUG 右上角 设置这一属性即可
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabScaffold(),
//      home: AboutPage(),
    );
  }
}
