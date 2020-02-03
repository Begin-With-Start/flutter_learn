import 'package:flutter/material.dart';
import 'package:flutter_test_app/tab_view/tabview_demo.dart';

void main(){
  runApp(MaterialApp(
    home: MainHome(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}

class MainHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TabView();
  }

}