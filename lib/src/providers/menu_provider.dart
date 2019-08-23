import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;



class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    upData();
  }

  Future<List<dynamic>> upData() async {
    
    final resoponse = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resoponse);
    options = dataMap['rutas'];

    return options;
  }
}

final menuProvider = new _MenuProvider();