import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'LoginDashboard.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() => runApp(MaterialApp(
  home: PageHome(),
));

class PageHome extends StatelessWidget {
  double hasil;
  double hasil2;
  double angka1 = 30.0;
  double angka2 = 40.0;

  void getHitung(){
    hasil = angka1 * angka2;

  }

  //latihan

  void latihan(double angka1, int angka2, String angka3){
    var parseAngka2 = double.parse(angka2.toString());
    var parseAngka3 = double.parse(angka3);
    hasil2 = angka1 * parseAngka2 * parseAngka3;
  }
  @override
  Widget build(BuildContext context) {
    getHitung();
    latihan(30.0, 20, "20");
    print("hasilnya :"+hasil2.toString());
    return Scaffold(
      appBar: AppBar(
        title : Text('Flutter Day 1 $hasil'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              color: Colors.red,
              child: Text("button page2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
          
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text("button page3"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));

              },
            ),
            RaisedButton(
              color: Colors.amberAccent,
              child: Text("button login dashboard"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginDashboard()));

              },
            ),

            RaisedButton(
              color: Colors.cyan,
              child: Text("Toast Button"),
              onPressed: (){
                Fluttertoast.showToast(
                    msg: "This is flutter Toast",
                  gravity: ToastGravity.BOTTOM,
                  toastLength: Toast.LENGTH_LONG,
                  textColor: Colors.white,
                  backgroundColor: Colors.grey
                );


              },
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              child: Text("Alert Button"),
              onPressed: (){

                showDialog(
                    context: context,
                  builder: (BuildContext context){
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        elevation: 5,
                        title: Text("title simple alert dialog"),
                        content: Text("content sample alert dialog"),
                        actions: <Widget>[
                          RaisedButton(
                            color: Colors.green,
                            child: Text("Yes"),
                            onPressed: (){
                                  Navigator.pop(context);
                            },
                          ),
                          RaisedButton(
                            color : Colors.red,
                            child: Text("No"),
                            onPressed: (){
                              Navigator.pop(context);

                            },
                          )
                        ],
                      );
                  }
                );

              },
            ),
            Builder(
              builder: (BuildContext context) => RaisedButton(
                color: Colors.purpleAccent,
                child: Text("Snackbar Button"),
                onPressed: (){
                  final _snackbar = SnackBar(
                    content: Text('Hallo this is sample snackbar'),
                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: (){

                      },
                    ),
                  );
                    Scaffold.of(context).showSnackBar(_snackbar);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


