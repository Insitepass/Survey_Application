import 'package:flutter/material.dart';
import 'package:survey_application/Intro.dart';
import 'package:survey_application/home.dart';
import 'package:survey_application/resetpassword.dart';
import 'signUp.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

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
                      'Survey App',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
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
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      labelText: 'Password',
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
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                      ),
                      child: Text('Login'),
                      onPressed: () async {
                        try {
                                    await _auth.signInWithEmailAndPassword(
                                        email: emailController.text, password: passwordController.text);

                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (contex) => IntroPages(),
                                      ),
                                    );
                                         
                            } on FirebaseAuthException catch (e) {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title: Text("Ops! Login Failed"),
                                        content: Text('${e.message}'),

                                        ));
                             }
                      }
                    )
                  ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    TextButton(
                      //textColor: Colors.blue,
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );
                    //forgot password screen
                  },
                  //textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
              ],
            )));
  }
}

