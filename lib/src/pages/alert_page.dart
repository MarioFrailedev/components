import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: <Widget>[
           FadeInImage(
            image: NetworkImage('https://cdn.shopify.com/s/files/1/1211/8882/products/Drunk_Rick_Head_WEB_1024x1024.jpg?v=1503591783'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 80),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Center(
            child: 
            RaisedButton(
              elevation: 10.0,
              shape: StadiumBorder(),
              child: Text('Mostrar una alerta'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () => _showAlert(context),
            ),

            
          ),
        ],
      ),
    );
  }

  void _showAlert(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo', textAlign: TextAlign.center,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('La maldita caja de la alerta'),
              FlutterLogo(size: 100)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      }
    );

  }
}