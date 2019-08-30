import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _numberList = new List();
  int _lastOne = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addmore10();

    _scrollController.addListener(() {
      
     if( _scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
       //_addmore10();
       _fetchData();
     }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
        centerTitle: true,
      ),
      body:Stack(
        children: <Widget>[
          _bList(),
          _bLoading(),  
        ],
      ),
    );
  }

  Widget _bList() {
    return RefreshIndicator(
      onRefresh: getPage1,
      child: ListView.builder(
      controller: _scrollController,
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {

        final img = _numberList[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/800/600/?image=$img'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
     ),
    ); 
  }

  Future<Null> getPage1() async {
    
    final duration = new Duration(seconds: 2);
     new Timer(duration, (){

      _numberList.clear();
      _lastOne++;
      _addmore10();

    });

    return Future.delayed(duration);

  }

  void _addmore10() {
    for (var i = 1; i < 10; i++ ) {
      _lastOne++;
      _numberList.add( _lastOne );
      setState(() {});
    }
    
  }

  Future<Null> _fetchData() async {

    _isLoading = true;
    setState(() { });

    final duration = new Duration(seconds:2 );
    return new Timer(duration, responseHTTP );

  }

  void responseHTTP() {

    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(microseconds: 250)
    );

    _addmore10();

  }

  Widget _bLoading() {
    
    if(_isLoading){

      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 18.0,),
        ],
      );
    }else {
      return Container();
    }
   
  }
}