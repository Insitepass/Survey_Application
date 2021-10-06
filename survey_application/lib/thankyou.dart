import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_application/login.dart';

class ThankYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(30),
                child: Text('Survey App',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    )),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child:
                      Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text('Thank you for completing the survey',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                  ])),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    
                    //TimeStamp collection
                    DateTime currentDate = DateTime.now();
                    final _auth = FirebaseAuth.instance;
                    FirebaseFirestore.instance.collection('TimeStamps').add({
                      'email': _auth.currentUser!.email,
                      'logout_time': currentDate.toString(),
                    });
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Log out',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)))))
            ])));
  }
}
