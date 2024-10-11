import 'package:flutter/material.dart';
import 'main.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key :key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("img/flutter.png"),
              backgroundColor: Colors.white,
            ),
            
            Container(
              width: 300,
              height: 55,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email"
                ),

              ),
            ),

            Container(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline)
                ),

              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));

              },
                  child: Text("Login")
              ) ,
            )



          ],
        ),
      ),
    );
  }
}