import 'package:flutter/material.dart';

import 'detils_page.dart';
import 'dmeo.dart';
import 'gridview_demo.dart';
import 'home.dart';
import 'medicines.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
