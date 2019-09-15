import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/listView_page.dart';
import 'package:components/src/pages/pickle_rick_page.dart';
import 'package:components/src/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _TabsWidgetState();
  }

  TabsWidget({
    Key key,
  }) : super(key: key);

}

class _TabsWidgetState extends State<TabsWidget> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    //_selectTab(widget.currentTab);
    super.initState();
  }

  int _selectedPage = 0;
  final _pageOptions = [
    CardPage(),
    PickleRickPage(),
    InputPage(),
    ListPage(),
  ];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          drawer: DraweWidget(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Builder(
            builder: (context) => IconButton(
                  icon: new Icon(Icons.sort),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
            ),
        title: Text(
          'Components',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700,),
            
        ),

        centerTitle: true,
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open, color: Colors.blue, ),
            title: Text('Tarjetas', style: TextStyle(color: Colors.blue,)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.link, color: Colors.blue,),
            title: Text('Pickle Rick',style: TextStyle(color: Colors.blue,))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input, color: Colors.blue,),
            title: Text('formulario', style: TextStyle(color: Colors.blue,))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.blue,),
            title: Text('Image Scroll', style: TextStyle(color: Colors.blue,))
          )
        ],
      ),
    );
  }
}