import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ImportantData.dart';
import 'another_widget.dart';

class MyWidget extends StatefulWidget {
  final String title;

  MyWidget({Key key, this.title}) : super(key: key);
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //ImportantDataを生成
  ImportantData importantData = ImportantData();

  _doImportantThings() {
    setState(() {
      importantData.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyWidget is built");
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("MyWidget"),
            AnotherWidget(importantData: importantData)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _doImportantThings,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.green,
    );
  }
}
