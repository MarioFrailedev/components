import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['uno','dos','tres','cuatro'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Planet'),
        centerTitle: true,
      ),
      body: ListView(
        //children: _createItems()
        children: _createListShortWay()
      ),
    );
  }
/* 
  List<Widget> _createItems() {

    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt) ,
      );
      list..add(tempWidget)
          ..add(Divider());
    }
    return list;
  } */

  List<Widget> _createListShortWay() {
    
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Apunteleee!'),
            leading: Icon(Icons.adb),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}