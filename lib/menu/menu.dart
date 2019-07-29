import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highspeed_railway/entertainment/entertainment.dart';
import 'package:flutter_highspeed_railway/home/home.dart';
import 'package:flutter_highspeed_railway/me/me_page.dart';
import 'package:flutter_highspeed_railway/trip/trip.dart';

/// bottomNavigationBar
class TabScaffold extends StatefulWidget {
  @override
  _TabScaffoldState createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(), //首页界面
      TripPage(), //行程界面
      EntertainmentPage(), //娱乐界面
      MePage(), //我的界面
    ];
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        //底部导航栏背景色
        activeColor: Colors.blue,
        //被选中的tabbar背景色
        currentIndex: _selectedIndex,
        //当前被选中的tabbar的序号
        onTap: (index) {
          //tabBar点击事件
          setState(() {
            _selectedIndex = index; //将当前被选中序号更新成被点击的tabbar的序号，并通知界面刷新
          });
        },
        items: const <BottomNavigationBarItem>[
          //底部显示的tabbar
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home, size: 25, //tabbar图标
              ),
              title: Text("首页")), //tabbar标题
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,size: 25,
              ),
              title: Text("行程")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.videocam,size: 25,
              ),
              title: Text("娱乐")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,size: 25,
              ),
              title: Text("我的")),
        ],
      ),
      body: pages[_selectedIndex], //底部导航栏对应的界面
    );
  }
}
