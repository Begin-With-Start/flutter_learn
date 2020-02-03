import 'package:flutter/material.dart';
import 'list_view_demo/home_demo.dart';

////入口函数
//void main() {
//  runApp(App());
//}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //一个material 中自带的组件 设置导航栏相关的内容
    return MaterialApp(
      home: ListViewUi(),
      //主题颜色
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}




