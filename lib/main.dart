import 'package:flutter/material.dart';

import 'my_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp is built");
    return MaterialApp(
      title: 'InheritedWidgetSample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWidget(title: 'InheritedWidget'),
    );
  }
}
