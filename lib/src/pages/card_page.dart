import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Components'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 15.0),
          _cardType2(),
          SizedBox(height: 15.0),
          _cardType1(),
          SizedBox(height: 15.0),
          _cardType2(),
          SizedBox(height: 15.0),
          _cardType1(),
          SizedBox(height: 15.0),
          _cardType2(),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 15.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blueGrey),
            title: Text('Soy un 🥒 o una 🍎, 🤣'),
            subtitle: Text('Soy un pepino cuando me da flojera algo, prefiero ser un pepino o una manzana, no te pasa?? '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('No Me pasa 👎🏻'),
                onPressed: () { },
              ),
              FlatButton(
                child: Text('Me Pasa 👍🏻'),
                onPressed: () { },
              ),
            ],
          )
        ],
        ),
      );
  }

  _cardType2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(

        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://wallpapercave.com/wp/wp2065394.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Rick and Morty serie basada en la idea de volver al futuro', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}