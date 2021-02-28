import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/ImportantData.dart';
import 'package:flutter_practice/yet_another_widget.dart';

class AnotherWidget extends StatefulWidget {
  final ImportantData importantData;

  AnotherWidget({Key key, @required this.importantData})
      : assert(importantData != null),
        super(key: key);

  @override
  _AnotherWidgetState createState() => _AnotherWidgetState();
}

class _AnotherWidgetState extends State<AnotherWidget> {
  ImportantData get _importantData => widget.importantData;

  @override
  Widget build(BuildContext context) {
    debugPrint("AnotherWidget is built");
    return Container(
      height: 400,
      decoration: BoxDecoration(color: Colors.cyan),
      child: Column(
        children: <Widget>[
          Text('AnotherWidget'),
          YetAnotherWidget(importantData: _importantData)
        ],
      ),
    );
  }
}
