import 'package:flutter/material.dart';
import 'package:flutterday1/LoginDashboard.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _secureText = true;
  bool _isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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

  void setLoading() async{
      setState(() {
        _isLoading = true;
      });
      print(_emailController.text);
    await Future.delayed(Duration(seconds: 5), (){
      setState(() {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginDashboard(
          email3 : _emailController.text.toString(),
          password3 : _passwordController.text.toString(),
        )));
        _isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Masukkan Nama",
                    hintStyle: TextStyle(color: Colors.white)

                ),

              ),
            ) ,
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextFormField(
                controller: _emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Masukkan email",
                  hintStyle: TextStyle(color: Colors.white)


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
                    hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                    icon: Icon(_secureText == true ? Icons.visibility: Icons.visibility_off),
                    onPressed: (){
                      showPassword();
                    },
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),

            _isLoading == false ?
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  child: Text("Register", style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    setLoading();
                  },
                ),

              ),
            )

                :
                Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                )
          ],
        ),
      ),
    );
  }
}
