import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoRefTolmportanDataWidget extends StatefulWidget {
  NoRefTolmportanDataWidget({Key key}) : super(key: key);

  @override
  _NoRefTolmportanDataWidgetState createState() =>
      _NoRefTolmportanDataWidgetState();
}

class _NoRefTolmportanDataWidgetState extends State<NoRefTolmportanDataWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint('_NoRefTolmportanDataWidgetState is build');
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: <Widget>[
          Text('NoRefTolmportanDataWidgetState'),
        ],
      ),
    );
  }
}
