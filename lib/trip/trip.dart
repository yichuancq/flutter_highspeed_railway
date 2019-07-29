import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 行程
class TripPage extends StatefulWidget {
  TripPage({Key key}) : super(key: key);

  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  /// 添加行程按钮
  Widget _addTripBtn() {
    return RaisedButton.icon(
      icon: new Icon(
        Icons.add,
        color: Colors.white,
      ),
      color: Colors.blue,
      elevation: 10,
      splashColor: Colors.white,
      label: Text(
        "添加行程",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          side: BorderSide(
              color: Color(0xFFF0F00), style: BorderStyle.solid, width: 2)),
    );
  }

  ///header
  Widget _header() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      child: Column(
        children: <Widget>[
          Card(
            //shadow
            elevation: 5,
            child: Image.asset("assets/image/trip.jpeg", fit: BoxFit.fill),
          ),
          Text("开始一段新旅程",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
          SizedBox(
            height: 5,
          ),
          Text("官方铁路行程服务，让出行更省心",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0)),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: _addTripBtn(),
          ),
        ],
      ),
    );
  }

  Widget _hotCityLab() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("热门城市",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0)),
        ],
      ),
    );
  }

  /// city
  Widget _city(String imgURL, String name) {
    return Card(
      elevation: 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imgURL, width: 150, fit: BoxFit.fill),
          Text(name,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0)),
        ],
      ),
    );
  }

  /// 热门城市
  Widget _hotCity() {
    return Container(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _city("assets/image/重庆.jpeg", "重庆"),
          _city("assets/image/北京.jpeg", "北京"),
          _city("assets/image/上海.jpeg", "上海"),
          _city("assets/image/深圳.jpeg", "深圳"),
        ],
      ),
    );
  }

  ///
  Widget _builderBody() {
    return Container(
      child: Column(
        children: <Widget>[
          _header(),
          _hotCityLab(),
          _hotCity(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "行程",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
//        backgroundColor: Colors.green,
        elevation: 0,
        toolbarOpacity: 1,
      ),
      body: _builderBody(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
