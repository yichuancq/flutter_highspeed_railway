import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highspeed_railway/me/me_page.dart';
import 'package:flutter_highspeed_railway/menu/menu.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  ///
  Widget _header() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image//mobile_auth_back.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
//      height: 40,
      child: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/image/icon1.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("掌上高铁",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                Text("v2.6.0",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0)),
              ],
            ),
          )),
    );
  }

  Widget _builderTools() {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            onTap: () {},
            title: Text("软件服务以及免责任说明",
                style: TextStyle(fontSize: 14, color: Colors.black54)),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            onTap: () {},
            title: Text("隐私政策",
                style: TextStyle(fontSize: 14, color: Colors.black54)),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }

  void doNavigator() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return TabScaffold();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "关于软件",
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
//        leading: IconButton(
//          onPressed: () {
//            doNavigator();
//          },
//          icon: new Icon(
//            Icons.arrow_back_ios,
//            color: Colors.black54,
//            size: 20,
//          ),
//        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            _header(),
            _builderTools(),
          ],
        ),
        //_header(),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
