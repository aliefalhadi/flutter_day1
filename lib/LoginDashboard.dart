

import 'package:flutter/material.dart';
import 'package:flutterday1/DetailPage.dart';

class LoginDashboard extends StatefulWidget {
  String email3, password3;
  LoginDashboard({this.email3, this.password3});
  @override
  _LoginDashboardState createState() => _LoginDashboardState();
}

class _LoginDashboardState extends State<LoginDashboard> {
  bool _secureText = true;
  var _pass = "";
  var _email = "";



   var _emailController = TextEditingController();

  var _passwordController = TextEditingController();

  void showPassword(){
    if(_secureText == true){
      setState(() {
        _secureText = false;
      });
    }else{
      setState(() {
        _secureText = true;
      });
    }
  }
  @override
  void initState() {
    _emailController.text = widget.email3;
    _passwordController.text = widget.password3;
    super.initState();
  }
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red[400],
      body: Center(
        child: ListView(

          children: <Widget>[
            SizedBox(height: 80,),
            Icon(Icons.local_hospital, size: 80, color: Colors.white,),
            Center(child: Text("Hospital Angkasa", style: TextStyle(color: Colors.white, fontSize: 24),)),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextFormField(
                controller: _emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Masukkan email",
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                ),

              ),
            ) ,
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextFormField(
                controller: _passwordController,
                obscureText: _secureText,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Masukkan Password",
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(
                          _secureText == true ? Icons.visibility : Icons.visibility_off
                      ),
                      color: Colors.white,
                      onPressed: (){
                          showPassword();
                  })
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  child: Text("LOGIN", style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    String username = _emailController.text;
                    String password = _passwordController.text;

                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                            ),
                            elevation: 5,
                            title: Text("Login"),
                            content: Text("Email: $username , password:  $password"),
                            actions: <Widget>[
                              RaisedButton(
                                color: Colors.green,
                                child: Text("Yes"),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return DetailPage(
                                      text:username,
                                      text2: password,
                                    );
                                  }));
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
