import 'package:flutter/material.dart';
import 'package:flutterday1/LoginDashboard.dart';

import 'Register.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        backgroundColor: Colors.red,

      ),
        backgroundColor: Colors.red[400],
        body:Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50,),
                Icon(Icons.local_hospital, size: 80, color: Colors.white),
              SizedBox(height: 16,),
              Text("Hospital Angkasa", style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              SizedBox(height: 70,),
              Text("Hospital Angkasa Melayani Pasien Dengan", style: TextStyle(
                color: Colors.white,
                fontSize: 18
              )),
              SizedBox(height: 16,),
              Text("Senang Hati", style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('Login', style: TextStyle(color: Colors.red),),
                    color: Colors.white,
                    onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginDashboard()));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('Register', style: TextStyle(color:Colors.red),),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                    },
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
