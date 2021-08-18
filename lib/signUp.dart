import 'package:flutter/material.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      fillColor: Colors.white, filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)
                      ),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      fillColor: Colors.white, filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      fillColor: Colors.white, filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)
                      ),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
               
                Container(
                    height: 40,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                            ),
                          ),

                      child: Text('Sign Up'),
                      onPressed: () {
                        //print(nameController.text);
                        //print(passwordController.text);
                          Navigator.pop(context);
                      },
                    )),
              ],
            )));
  }
}