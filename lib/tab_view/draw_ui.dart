import 'package:flutter/material.dart';

class DrawUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('hexiaofei'),
            accountEmail: Text('2316587435@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.leoao.com/-1268789994.png1517417447861'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:NetworkImage('https://cdn.leoao.com/-1267352039-011577957872371.jpeg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.green[600].withOpacity(0.6),
                    BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('message'.toUpperCase(),textAlign: TextAlign.right,),
            trailing: Icon(Icons.message,color: Colors.green[600],size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('favorite'.toUpperCase(),textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite,color: Colors.green[600],size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('settings'.toUpperCase(),textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings,color: Colors.green[600],size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
        ],

      ),
    );
  }

}