import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Center(
            child: Container(
              height: 700,
              width: 300,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 50, color: Colors.purple),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.purple,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.purple)),
                      labelText: "User Name",
                      labelStyle: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.purple)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.purple,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.purple)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      shadowColor: Colors.red,
                      elevation: 5,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.fromLTRB(90, 20, 90, 20),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an Account? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Register here",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ]),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forgot Password? ",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Click here",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
