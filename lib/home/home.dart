import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  ///
  Widget _header() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ListTile(
        leading: ClipOval(
          child: Image.asset(
            "assets/image/girl2.jpeg",
            height: 100.0,
          ),
        ),
        title: Text(
          "下午好，yichuan",
          style: TextStyle(color: Colors.grey),
        ),
        subtitle: Text(
          "换个心情，享受旅程",
          style: TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.add, size: 35, color: Colors.black54),
      ),
    );
  }

  ///wifi按钮
  Widget _addTripBtn() {
    return RaisedButton.icon(
      icon: new Icon(
        Icons.wifi,
        size: 40,
        color: Colors.white,
      ),
      color: Colors.blueAccent,
      elevation: 10,
      splashColor: Colors.white,
      label: Text(
        "点击识别",
        style: TextStyle(color: Colors.white, fontSize: 13),
      ),
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          side: BorderSide(
              color: Color(0xFFF0F00), style: BorderStyle.solid, width: 2)),
    );
  }

  ///
  Widget _builderToolMenu() {
    /// 极速打车，余票查询，车站大屏

    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              _addTripBtn(),
              Text("复兴号列车已覆盖"),
            ],
          ),
          Column(
            children: <Widget>[
              new Image.asset(
                "assets/image/train.png",
                width: 50,
                height: 50,
              ),
              SizedBox(
                height: 0,
              ),
              Text("极速打车"),
            ],
          ),
          Column(
            children: <Widget>[
              new Image.asset(
                "assets/image/icon_imageshare.png",
                width: 50,
                height: 50,
              ),
              SizedBox(
                height: 0,
              ),
              Text("余票查询"),
            ],
          ),
          Column(
            children: <Widget>[
              new Image.asset(
                "assets/image/operation_guide_widget.png",
                width: 50,
                height: 50,
              ),
              SizedBox(
                height: 0,
              ),
              Text("车站大屏"),
            ],
          ),
        ],
      ),
    );
  }

  ///添加行程
  Widget _addTrip() {
    //掌上高铁伴你出行
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/home_add_trip_background.png"),
          fit: BoxFit.fill,
        ),
      ),
//      child: Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),

        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, left: 1, right: 10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("掌上高铁伴你出行",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(
                          width: 90,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.verified_user,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text("行程提醒", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.verified_user,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text("官方正晚点", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.verified_user,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text("成长积分", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: RaisedButton.icon(
              color: Colors.white,
              icon: Icon(Icons.add),
              label: Text("添加行程"),
              splashColor: Colors.grey,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
          ),
        ],
        // RaisedButton.icon(),
      ),
//      ),
    );
  }

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

  ///自定义卡片
  Widget card(String title, String subTitle, Icon cardIcon) {
    var container = new Container(
//      color: Colors.blueAccent,
      //外边距
      margin: EdgeInsets.only(top: 0, left: 0, right: 0),
      padding: EdgeInsets.all(25),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            width: 100,
//            height: 80,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: new Text(title,
                        style: TextStyle(color: Colors.black87, fontSize: 17)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: new Text(
                      subTitle,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  // child: new Text("aaa"),
                )
              ],
            ),
          ),

          ///icon
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[cardIcon],
          )
        ],
      ),
    );
    return GestureDetector(
      onTap: () {
        //监听点击事件
        print("监听点击事件。。。");
      },
      child: container,
    );
  }

  ///精彩推荐
  Widget scrollBanner() {
    return new Container(
      color: Colors.white,
      height: 100,
      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
      child: new ListView(
        ///水平滚动
        scrollDirection: Axis.horizontal,
        addAutomaticKeepAlives: true,
        children: <Widget>[
          Card(
            elevation: 1,
            child: card(
                "极速打车",
                "一起来约 \"\惠\" ",
                new Icon(
                  Icons.local_taxi,
                )),
          ),
          Card(
            elevation: 1,
            child: card(
                "车站大屏",
                "列车动态早知道",
                new Icon(
                  Icons.wifi_tethering,
                )),
          ),
          Card(
            elevation: 1,
            child: card(
                "极速打车",
                "因为你的热爱",
                new Icon(
                  Icons.show_chart,
                )),
          ),
          Card(
            elevation: 1,
            child: card(
                "极速打车",
                "一起逛逛",
                new Icon(
                  Icons.remove_red_eye,
                )),
          ),
        ],
      ),
    );
  }

  ///行程服务
  Widget myService() {
    return new Container(
      margin: EdgeInsets.only(top: 2, left: 0, right: 0),
      color: Colors.white,
      height: 80,
      padding: EdgeInsets.all(10),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Container(
//            width: 100,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Icon(
                  Icons.access_time,
                  size: 30,
                ),
                new Text("时刻表",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Icon(
                  Icons.airline_seat_recline_extra,
                  size: 30,
                ),
                new Text("社区生活",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Icon(
                  Icons.location_city,
                  size: 30,
                ),
                new Text("发现城市",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Icon(
                  Icons.more_horiz,
                  size: 30,
                ),
                new Text("more",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///滑动广告位
  Widget _swapBanner() {
    return new Container(
      //高度
      height: 160,
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
        child: Image.asset("assets/image/保险.jpeg", fit: BoxFit.fill),
      ),
    );
  }

  ///底部显示区域
  Widget _buttomBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.train,
          size: 15,
          color: Colors.grey,
        ),
        Text("中国铁路智慧出行", style: TextStyle(color: Colors.grey, fontSize: 13)),
      ],
    );
  }

  ///
  Widget _builderBody() {
    return Container(
        // color: Colors.white,
        child: ListView(
      children: <Widget>[
        _header(),
        //
        _builderToolMenu(),
//      添加行程

        _addTrip(),
//          _addTrip2(),
        _hotLab("精彩推荐"),
        scrollBanner(),
        SizedBox(
          height: 10,
        ),
        _hotLab("行程服务"),
        myService(),
        _swapBanner(),
        //
        _buttomBar(),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _builderBody(),
      ),
    );
  }
}
