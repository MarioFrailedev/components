import 'package:flutter/material.dart';

//local files
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon.string.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Flutter'),
        centerTitle: true,
      ),
      body: _list(),
    );
  }

  Widget _list() {

    return FutureBuilder(
      future: menuProvider.upData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {

        return ListView(
          children: _listItems(snapshot.data, context),
        );

      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> options = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueGrey),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);

          /* final route = MaterialPageRoute(
            builder: (context)=> AlertPage()
          );
          
          Navigator.push(context, route); */

        },
      );
      options..add(widgetTemp)
             ..add(Divider());
    });

    return options;
  }
}

