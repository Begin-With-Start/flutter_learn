import 'package:flutter/material.dart';
import 'package:flutter_test_app/list_view_demo/home_demo.dart';
import 'package:flutter_test_app/tab_view/bottom_ui.dart';
import 'draw_ui.dart';

class TabView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        //导航栏具体设置
        appBar: AppBar(
          title: Text('首页'),
          elevation: 5.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '搜索',
              onPressed: () => debugPrint('搜索点击了'),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white30,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_boat),
                text: '船',
              ),
              Tab(
                icon: Icon(Icons.directions_bus),
                text: '公交',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: '自行车',
              ),
            ],
          ),
        ),
        //显示内容设置
        body: TabBarView(
          children: <Widget>[
            ListViewUi(),
            Icon(
              Icons.directions_bus,
              size: 128.0,
              color: Colors.black26,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black38,
            ),
          ],
        ),
        drawer: DrawUi(),
        bottomNavigationBar: BottomUi(),
      ),
    );
  }
}
