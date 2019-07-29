import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntertainmentPage extends StatefulWidget {
  EntertainmentPage({Key key}) : super(key: key);

  @override
  _EntertainmentPageState createState() => _EntertainmentPageState();
}

class _EntertainmentPageState extends State<EntertainmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'EntertainmentPage',
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
