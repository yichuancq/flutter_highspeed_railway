import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// bottomNavigationBar
class TabRecommend extends StatefulWidget {
  @override
  _TabScaffoldState createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabRecommend> {
  ///滑动广告位
  Widget _swapBanner() {
    return new Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //高度
      height: 140,
      //显示宽度
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: swapPageView(),
    );
  }

  ///图片轮播效果部件
  Widget swapPageView() {
    var container = new Container(
//      height: 80,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return cardView();
        },
        itemCount: 5,
        //自动翻页
        autoplay: true,
        layout: SwiperLayout.DEFAULT,
        // 分页指示器
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter, // 位置 Alignment.bottomRight
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 10), // 距离调整
            //圆点滚动
            // 指示器构建
            builder: DotSwiperPaginationBuilder(
              // 字体颜色
              color: Colors.white,
              // 当前的指示字体颜色
              activeColor: Colors.blueAccent,
              // 大小
              size: 5,
              // 当前的指示字体大小
              activeSize: 8,
              space: 1,
            )),
        scale: 0.95,
        // 两张图片之间的间隔
        viewportFraction: 0.8, // 当前视窗展示比例 小于1可见上一个和下一个视窗
      ),
    );
    return container;
  }

  ///cardView
  Widget cardView() {
    return new Card(
      child: new Container(
        padding: const EdgeInsets.only(left: 0, bottom: 0),
        child: Image.asset("assets/image/电影banner.jpeg", fit: BoxFit.fill),
      ),
    );
  }

  ///热门标签
  Widget _hotLab(String title) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(title,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0)),
        ],
      ),
    );
  }

  Widget _labHead() {
    return Container(
      padding: EdgeInsets.only(left: 0, right: 0, top: 0),
      child: ListTile(
        title: Row(
          children: <Widget>[
            Image.asset("assets/image/影头条.png", fit: BoxFit.fitWidth),
            Text("太好玩了，京沪线打卡",
                style: TextStyle(fontSize: 17, color: Colors.black87)),
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
      ),
    );
  }

  ///
  Widget _builderBody() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          //添加显示打部件
          _swapBanner(),
          _labHead(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _builderBody(),
    );
  }
}
