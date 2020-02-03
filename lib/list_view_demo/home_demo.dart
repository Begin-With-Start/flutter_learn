import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewUi extends StatelessWidget {

  //构建每个列表item的显示内容
  Widget _listItemBuilder(BuildContext context , int index ){
    return Container(
      color:Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(posts[index].title,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,)
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.grey[100],
//      //导航栏具体设置
//      appBar: AppBar(
//        title: Text('测试'),
//        elevation: 10.0,
//        centerTitle: true, //标题居中
//      ),
      //显示内容设置
      body: ListView.builder(
        itemBuilder: _listItemBuilder,
        itemCount: posts.length,
      ),
    );
  }
}