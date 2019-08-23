import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Components Planet',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute (builder: (BuildContext context) => AlertPage());
      },
    );
  }
}