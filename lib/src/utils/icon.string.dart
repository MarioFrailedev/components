import 'package:flutter/material.dart';

  final _icons = <String, IconData> {

    'add_alert'      : Icons.add_alert,
    'accessibility'  : Icons.accessibility,
    'folder_open'    : Icons.folder,
    'link'           : Icons.link,


  };

  Icon getIcon(String iconName) {

    return Icon( _icons[iconName], color: Colors.blue );

  }