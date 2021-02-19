import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Pavlova Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Pavlova(),
      );
}

class Pavlova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '170 Review',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.kitchen,
                  color: Colors.green[500],
                ),
                Text('PREP:'),
                Text('20 min'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.green[500],
                ),
                Text('COOK:'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.restaurant,
                  color: Colors.green[500],
                ),
                Text('FEEDS:'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('titleText'),
          Text('subTitle'),
          ratings,
          iconList,
        ],
      ),
    );

    final sample = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: leftColumn,
        ),
      ],
    );

    return Scaffold(
      body: Center(child: sample),
    );
  }
}
