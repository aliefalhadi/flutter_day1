import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String text;
  final String text2;

  DetailPage({this.text, this.text2});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("haloo")
      ),
      body: Column(
        children: <Widget>[
          Text(text),
          Text(text2),
        ],
      ),
    );
  }
}

