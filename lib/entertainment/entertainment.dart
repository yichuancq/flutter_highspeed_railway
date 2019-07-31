import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highspeed_railway/entertainment/recommend.dart';

class EntertainmentPage extends StatefulWidget {
  EntertainmentPage({Key key}) : super(key: key);

  @override
  _EntertainmentPageState createState() => _EntertainmentPageState();
}

class _EntertainmentPageState extends State<EntertainmentPage> {
  ///娱乐
  Widget _tabPage() {
    const tabStr = <String>[
      "推荐",
      "飞驰影院",
      "游戏",
    ];
    return DefaultTabController(
        length: 3,
        child: DefaultTextStyle(
          style: TextStyle(
            fontWeight: FontWeight.w400,
            inherit: false,
            fontSize: 20.0,
          ),
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: TabBar(
                    labelColor: Colors.black38,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.all(0.0),
                    isScrollable: false,
                    tabs: tabStr
                        .map((str) => Tab(
                              key: Key(str),
                              text: str,
                            ))
                        .toList()),
              ),
              body: Center(
                child: TabBarView(children: <Widget>[
                  TabRecommend(),
                  Center(
                    child: Text(
                      "飞驰影院",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      "游戏",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return _tabPage();
  }
}
