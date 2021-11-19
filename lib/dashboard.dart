import 'package:flutter/material.dart';
import 'package:survey_application/home.dart';
import 'package:survey_application/survey2.dart';


class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(

        
        
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Choose a Survey',
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25)
                  ),

                  SizedBox(height: 10.0),


                  Container(

      width: 400,
      height: 120,
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),

        ),
        
         child:Column(
           children:<Widget>[
             const ListTile(
              leading: Icon(Icons.security),
              title: Text('Cyber Security Awareness'),
              subtitle: Text('This assessment is designed to help your organization determine your security awareness training needs.'),
            ),
         ElevatedButton(
              child: Text('Start'),
              style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  )))]),
            
            


      ),
      
    ),
    SizedBox(height: 8.0),

    Container(

      width: 400,
      height: 120,
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),

        ),
        
         child:Column(
           children:<Widget>[
             const ListTile(
              leading: Icon(Icons.insert_chart),
              title: Text('Data Analytics Survey'),
              subtitle: Text('This assessment is designed to help determine the level of understanding in regard to Data Analytics.'),
            ),
            ElevatedButton(
              child: Text('Start'),
              style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Survey2Page(),
                  )))]),         

      ),
      
    ),
    SizedBox(height: 8.0),

                  
      ]),
    ));
  }
}