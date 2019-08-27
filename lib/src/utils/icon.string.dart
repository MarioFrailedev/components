import 'package:flutter/material.dart';

  final _icons = <String, IconData> {

    'add_alert'      : Icons.add_alert,
    'accessibility'  : Icons.person,
    'folder_open'    : Icons.image,
    'link'           : Icons.link,
    'donuts_large'   : Icons.donut_large,
    'input'          : Icons.input,
    'list'          : Icons.list,

  };

  Icon getIcon(String iconName) {

    return Icon( _icons[iconName], color: Colors.blue );

  }