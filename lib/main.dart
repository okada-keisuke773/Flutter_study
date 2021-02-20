import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation',
      home: MainScreen(),
    ));

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => DetailScreen()));
          },
          //Heroウィジェットで画像クリック時のアニメーションを追加
          //tagは画面遷移先のHeroと同じにしないと読み込まれない
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              'images/a.jpg',
              width: 180.0,
              height: 180.0,
            ),
          ),
        ),
      );
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
              child: Hero(
            tag: 'imageHero',
            child: Image.asset('images/a.jpg'),
          )),
        ),
      );
}
