import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//local files
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
     supportedLocales: [
      const Locale('en'), // English
      const Locale('es'), // español
    ],

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