import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highspeed_railway/about/about.dart';
import 'package:flutter_highspeed_railway/widget/common_widget.dart';

/// me page
class MePage extends StatefulWidget {
  MePage({Key key}) : super(key: key);

  @override
  _MePageState createState() => _MePageState();
}

/// me
class _MePageState extends State<MePage> {
  ///header
  Widget _header() {
    return Container(
      // 外边距
      margin: EdgeInsets.only(top: 1),
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipOval(
              child: Image.asset(
            "assets/image/girl2.jpeg",
            height: 100.0,
          )),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "yichuan",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  ///全部订单，待支付，待出行x
  Widget _headerBarBtn() {
    /// 全部订单，待支付，待出行
    var list = <Widget>[];
    var map = {
      "全部订单": Icons.event_note,
      "待支付": Icons.payment,
      "待出行": Icons.card_travel,
    };
    map.forEach((key, value) {
      if (key.startsWith("待支付")) {
        list.add(SizedBox(
          width: 60,
          child: MyImageButton(
            image: Icon(value, size: 30.0),
            title: key,
            tip: ("两笔"),
          ),
        ));
      } else {
        list.add(SizedBox(
          width: 60,
          child: MyImageButton(image: Icon(value, size: 30.0), title: key),
        ));
      }
    });
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: list,
      ),
    );
  }

  Widget _myToolMenu(Widget image, String title, String subTitle) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  image,
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  ///nave_menu
  Widget _builderToolMenu() {
    /// 我的卡券，用户反馈，客服热线，关于软件
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              print("on click item...");
            },
            child: _myToolMenu(new Icon(Icons.card_membership), "我的卡券", "8张"),
          ),
          SizedBox(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              print("on click item...");
            },
            child: _myToolMenu(new Icon(Icons.message), "用户反馈", ""),
          ),
          SizedBox(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              print("on click item...");
            },
            child: _myToolMenu(new Icon(Icons.phone), "客服热线", "8:30-21:00"),
          ),
          SizedBox(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              doNavigator();
              print("on click item...");
            },
            child: _myToolMenu(new Icon(Icons.info), "关于软件", "v2.0.5"),
          ),
        ],
        //children: list,
      ),
    );
  }

  void doNavigator() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return AboutPage();
    }));
  }

  ///
  Widget _builderBody() {
    return Container(
      child: Column(
        children: <Widget>[
          _header(),
          _headerBarBtn(),
          _builderToolMenu(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarOpacity: 1,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: new Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: new SafeArea(child: _builderBody()),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
