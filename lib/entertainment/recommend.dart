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
            alignment: Alignment.bottomRight, // 位置 Alignment.bottomRight
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
        viewportFraction: 1, // 当前视窗展示比例 小于1可见上一个和下一个视窗
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
      margin: EdgeInsets.only(top: 10, left: 20),
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

  Widget _content() {
    return buildGridViewCount();
  }

  Widget _content2() {
    return buildGridViewExtent();
  }

  //GridView.count 允许您指定列数
  Widget buildGridViewCount() {
    return new GridView.count(
      childAspectRatio: 1 / 1.5,
      crossAxisCount: 2,
      shrinkWrap: true,
      ////禁用滑动事件
      physics: new NeverScrollableScrollPhysics(),
      // padding: const EdgeInsets.all(0.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 0.0,
      children: <Widget>[
        _filmCard('assets/image/fm1.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm2.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm3.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm4.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm5.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm6.jpeg', "我的电影名称", "评分:7.3"),
//        _filmCard('assets/image/fm7.jpeg', "我的电影名称", "评分:7.3"),
//        _filmCard('assets/image/fm8.jpeg', "我的电影名称", "评分:7.3"),
//        _filmCard('assets/image/fm9.jpeg', "我的电影名称", "评分:7.3"),
//        _filmCard('assets/image/fm10.jpeg', "我的电影名称", "评分:7.3"),
//        _filmCard('assets/image/fm11.jpeg', "我的电影名称", "评分:7.3"),
//        _filmCard('assets/image/fm12.jpeg', "我的电影名称", "评分:7.3"),
      ],
    );
  }

//GridView.extent 允许您指定项的最大像素宽度
  Widget buildGridViewExtent() {
    return new GridView.extent(
      //宽高比
      childAspectRatio: 1 / 1.5,
      shrinkWrap: true,
      //禁用滑动事件
      physics: new NeverScrollableScrollPhysics(),
      maxCrossAxisExtent: 200.0,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: <Widget>[
        _filmCard('assets/image/fm7.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm8.jpeg', "我的电影名称", "评分:7.3"),
        _filmCard('assets/image/fm12.jpeg', "我的电影名称", "评分:7.3"),
      ],
    );
  }

  //film
  Widget _filmCard(String imgUrl, String title, String subTitle) {
//    double imageHeight = 220;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        // 文字左对齐
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imgUrl,
            width: double.infinity,
//            height: imageHeight,
            fit: BoxFit.fill,
          ),
          Text(
            title,
            maxLines: 2,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  /// filmInfo
  Widget _filmInfo(String imgURL, String name) {
    return Container(
      padding: EdgeInsets.only(left: 10),
//      elevation: 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imgURL, width: 140, fit: BoxFit.fill),
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
  Widget _hotFilms() {
    return Container(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _filmInfo("assets/image/fm6.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm8.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm9.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm10.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm11.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm12.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm13.jpeg", "我的电影名称"),
          _filmInfo("assets/image/fm14.jpeg", "我的电影名称"),
        ],
      ),
    );
  }

  Widget _builderBody() {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        //添加显示打部件
        _swapBanner(),
        _labHead(),
        _content(),
        _hotLab("欧美"),
        _content2(),
        _hotLab("热门电影"),
        _hotFilms(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.grey,
      body: _builderBody(),
    );
  }
}
