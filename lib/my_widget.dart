import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ImportantData.dart';
import 'another_widget.dart';
import 'no_ref_tolmportant_data_widget.dart';

class MyWidget extends StatefulWidget {
  final String title;

  MyWidget({Key key, this.title}) : super(key: key);
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //ImportantDataを生成
  ImportantData importantData = ImportantData();
  GlobalKey<AnotherWidgetState> anotherWidgetStateGlobalKey = GlobalKey();

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
            Text(
                'Another Widget Direct Reference ${anotherWidgetStateGlobalKey.currentState?.widget?.importantData?.count ?? "empty"}'),
            AnotherWidget(
                key: anotherWidgetStateGlobalKey, importantData: importantData),
            NoRefTolmportanDataWidget()
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
