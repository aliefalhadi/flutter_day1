import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "masukkan nama"
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.phone, size:60),
                  Text('phone')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.shopping_cart, size:60, color: Colors.red,),
                  Text('Cart')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.person, size:60),
                  Text('person')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
