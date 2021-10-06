import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_application/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class IntroPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(5),
            child: ListView(children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: Text('Survey App',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: Text(
                    'You have selected to complete the security awareness proficiency assessment.'
                    'This assessment is designed to help you organization determine your security awareness training needs.'
                    'You will be asked a total of 23 questions  about security awareness.'
                    'Please answer these questions honestly as it will provide your organization with better insight and improve you training experience ',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textAlign: TextAlign.center),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                         //TimeStamp collection
                        DateTime currentDate = DateTime.now();
                        final _auth = FirebaseAuth.instance;
                        FirebaseFirestore.instance
                            .collection('TimeStamps')
                            .add({
                          'login_time': currentDate.toString(),
                          'email': _auth.currentUser!.email
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text('Start',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0))))))
            ])));
  }
}
