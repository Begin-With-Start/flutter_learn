import 'package:flutter/material.dart';



class BottomUi extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _BottomUiState();
  }

}

class _BottomUiState extends State<BottomUi>{
  int _currentIndex = 0;

  void onTabHandler(int index) {
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.green[600],
      unselectedItemColor: Colors.white30,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: onTabHandler, //绑定事件
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('浏览'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('历史'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          title: Text('账户'),
        ),
      ],
    );
  }


}