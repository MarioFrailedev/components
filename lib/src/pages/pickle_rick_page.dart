import 'package:flutter/material.dart';

class PickleRickPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickle Rick Cards'),
        centerTitle: true,
      ),
      
      body: ListView(
      padding: EdgeInsets.all(10),
        children: <Widget>[
          Text('Histoia de Rick pepino', style: TextStyle(fontSize: 20, color: Colors.black), textAlign: TextAlign.center, ),
          _cardHistoryPart1(),
          SizedBox(height: 15.0),
          _cardHistoryPart2(),
          SizedBox(height: 15.0),
          _cardHistoryPart3(),
          SizedBox(height: 15.0),
          _cardHistoryPart4(),
          SizedBox(height: 15.0),
          _cardHistoryPart5(),
           SizedBox(height: 15.0),
          _cardHistoryPart6(),
           SizedBox(height: 15.0),
          _cardHistoryPart7(),
           SizedBox(height: 15.0),
          _cardHistoryPart8(),
        ],
      ),
    );
  }

  Widget _cardHistoryPart1() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://thumbs.gfycat.com/DefensiveKnobbyAmericanmarten-size_restricted.gif'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('🥒 Rick se convierte en pepino, para no ir a la cita con el psycologo 😂', textAlign: TextAlign.center,),
          ),
        ],

      ),
    );
  }

    Widget _cardHistoryPart2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.ytimg.com/vi/4SaPkH5JA4k/hqdefault.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Beth 👩 la hija de Rick se lleva la jeringa que lo convierte en humano de nuevo 💉', textAlign: TextAlign.center,),
          ),
        ],

      ),
    );
  }
  Widget _cardHistoryPart3() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://pbs.twimg.com/media/DG5jf53UIAAlA6i.jpg:large'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('🥒 Pepino Rick se va al consultorio del psycologo por los caños luchando con depredadores y cucrachas', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
  Widget _cardHistoryPart4() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.geek.com/wp-content/uploads/2017/08/screen-shot-2017-07-30-at-5-19-56-am-625x351.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Pepino Rick se equivoca y llega a una oficina de gobierno...', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

  Widget _cardHistoryPart5() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://fsmedia.imgix.net/4b/9c/6e/4f/f3b7/4e47/90f3/0a1135895af7/pickle-rick---rick-and-mortyjpg.jpeg?rect=278%2C0%2C1366%2C1029&auto=compress&w=1200'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Pepino Rick llega al consultorio de donde esta su familia', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

  Widget _cardHistoryPart6() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://archive.nerdist.com/wp-content/uploads/2017/08/rick-and-morty-therapy.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Pepino Rick llega al consultorio de donde esta su familia, y explica que no necisita terapia, por qu es un cientifico loco...', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

  Widget _cardHistoryPart7() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.kym-cdn.com/photos/images/original/001/294/183/ede.gif'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Pepino Rick y su Hija beth se reconcilian, le da la geringa y se van a beber... ', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

  Widget _cardHistoryPart8() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.redd.it/u8n8fsovru6z.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Pickle Rick!!', textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

}