import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_application/thankyou.dart';

class Survey2Page extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Survey2Page> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameField;
  // radio buttons values
  int id = 0;
  int id2 = 0;
  int id3 = 0;
  int id4 = 0;
  int id5 = 0;
  int id6 = 0;
  int id7 = 0;
  int id8 = 0;
  int id9 = 0;
  int id10 = 0;
  int id11 = 0;
  int id12 = 0;
  int id13 = 0;
  int id14 = 0;
  int id15 = 0;
  int id16 = 0;
  int id17 = 0;
  int id18 = 0;
  int id19 = 0;
  int id20 = 0;
  int id21 = 0;
  int id22 = 0;
  int id23 = 0;

  // checkbox values
  Map<String, bool> values = {
    'Accept the request because I need more friends.': false,
    'Accept the request because someone attractive would not be harmful.':
        false,
    'Decline the request because attractive people make me look bad.': false,
    'Decline the request because it is likely a fake account.': false,
  };

  var optionArray = [];

  // check function
  void checkBoxCallBack(bool? checkboxState) {
    values.forEach((key, value) {
      if (value == true) {
        optionArray.add(key);
      }
      setState(() {
        values[key] = value;
      });
    });
  }

  @override
  void initState() {
    _nameField = TextEditingController();

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Survey App'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Form(
                    key: _formKey,
                    child: Card(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Text(
                              '*This form will record your name, please fill your name'),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) return "Please fill your name";
                              return null;
                            },
                            controller: _nameField,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Please enter your Name',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListView(
                              padding: EdgeInsets.all(10),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: <Widget>[
                                //Section 1
                                Container(
                                  child: Text(
                                    ' Section 1:  '
                                    'Select your level of agreement with the following statements. Make sure to respond to each in order to proceed.',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),

                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '1. Data Visualization tools make data analysis easier and understandable.',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Radio(
                                              value: 1,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  id = 1;
                                                });
                                              }),
                                          Text('Strongly Disagree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 2,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  id = 2;
                                                });
                                              }),
                                          Text('Disagree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 3,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  id = 3;
                                                });
                                              }),
                                          Text('Neutral',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 4,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  id = 4;
                                                });
                                              }),
                                          Text('Agree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 5,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  id = 5;
                                                });
                                              }),
                                          Text(' Strongly Agree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                        ],
                                      )
                                    ]),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '2. How often do you use Tableau, the data visualization tool?',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Radio(
                                              value: 1,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 1;
                                                });
                                              }),
                                          Text('I dont use it',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 2,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 2;
                                                });
                                              }),
                                          Text('Once in a while',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 3,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 3;
                                                });
                                              }),
                                          Text('Quite a few times',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 4,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 4;
                                                });
                                              }),
                                          Text('All the time',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                        ],
                                      )
                                    ]),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '3. How often do you use PowerBI, the data visualization tool?',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Radio(
                                              value: 1,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 1;
                                                });
                                              }),
                                          Text('I dont use it',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 2,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 2;
                                                });
                                              }),
                                          Text('Once in a while',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 3,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 3;
                                                });
                                              }),
                                          Text('Quite a few times',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio(
                                              value: 4,
                                              groupValue: id2,
                                              onChanged: (val) {
                                                setState(() {
                                                  id2 = 4;
                                                });
                                              }),
                                          Text('All the time',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                        ],
                                      )
                                    ]),

                                SizedBox(
                                  height: 50,
                                ),

                                // Section 2
                                Container(
                                  child: Text(
                                    ' Section 2:  '
                                    'Select the best answer. Make sure to respond to each in order to proceed:',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                               /*  SizedBox(
                                  height: 20,
                                ), */
          
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                '4. _________ is the most important language for Data Science.',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            ListView(
                                              shrinkWrap: true,
                                              children: [
                                                ListTile(
                                                  leading: Radio(
                                                      value: 1,
                                                      groupValue: id3,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          id3 = 1;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Python',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                ListTile(
                                                  leading: Radio(
                                                      value: 2,
                                                      groupValue: id3,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          id3 = 2;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Java',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                ListTile(
                                                  leading: Radio(
                                                      value: 3,
                                                      groupValue: id3,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          id3 = 3;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Ruby',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                ListTile(
                                                  leading: Radio(
                                                      value: 4,
                                                      groupValue: id3,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          id3 = 4;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'R',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      '5. _________ is one of the key data science skills.',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  ListView(
                                                    shrinkWrap: true,
                                                    children: [
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: id4,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                id4 = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'Machine Learning',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: id4,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                id4 = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'Statistics',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: id4,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                id4 = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'Data Visualization',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: id4,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                id4 = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'All of the above.',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 50,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            '6. Some of the important libraries of Python that are used in Data Science are _________.',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        ListView(
                                                          shrinkWrap: true,
                                                          children: [
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 1,
                                                                  groupValue:
                                                                      id5,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      id5 = 1;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Panda',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 2,
                                                                  groupValue:
                                                                      id5,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      id5 = 2;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Numpy',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 3,
                                                                  groupValue:
                                                                      id5,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      id5 = 3;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Both Panda and Numpy',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 4,
                                                                  groupValue:
                                                                      id5,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      id5 = 4;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'None of the above',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 50,
                                                        ),
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  '7. What is true about Data Visualization?',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              ListView(
                                                                shrinkWrap:
                                                                    true,
                                                                children: [
                                                                  ListTile(
                                                                    leading: Radio(
                                                                        value: 1,
                                                                        groupValue: id6,
                                                                        onChanged: (val) {
                                                                          setState(
                                                                              () {
                                                                            id6 =
                                                                                1;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Data Visualization is used to communicate information clearly and efficiently to users by the usage of information graphics such as tables and charts.',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                  ListTile(
                                                                    leading: Radio(
                                                                        value: 2,
                                                                        groupValue: id6,
                                                                        onChanged: (val) {
                                                                          setState(
                                                                              () {
                                                                            id6 =
                                                                                2;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Data Visualization helps users in analyzing a large amount of data in a simpler way.',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                  ListTile(
                                                                    leading: Radio(
                                                                        value: 3,
                                                                        groupValue: id6,
                                                                        onChanged: (val) {
                                                                          setState(
                                                                              () {
                                                                            id6 =
                                                                                3;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Data Visualization makes complex data more accessible, understandable, and usable.',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                  ListTile(
                                                                    leading: Radio(
                                                                        value: 4,
                                                                        groupValue: id6,
                                                                        onChanged: (val) {
                                                                          setState(
                                                                              () {
                                                                            id6 =
                                                                                4;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'All of the above',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 50,
                                                              ),
                                                              Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        '8. Which of the following is false?',
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold)),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    ListView(
                                                                      shrinkWrap:
                                                                          true,
                                                                      children: [
                                                                        ListTile(
                                                                          leading: Radio(
                                                                              value: 1,
                                                                              groupValue: id7,
                                                                              onChanged: (val) {
                                                                                setState(() {
                                                                                  id7 = 1;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Data visualization include the ability to absorb information quickly',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                        ListTile(
                                                                          leading: Radio(
                                                                              value: 2,
                                                                              groupValue: id7,
                                                                              onChanged: (val) {
                                                                                setState(() {
                                                                                  id7 = 2;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Data visualization is another form of visual art',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                        ListTile(
                                                                          leading: Radio(
                                                                              value: 3,
                                                                              groupValue: id7,
                                                                              onChanged: (val) {
                                                                                setState(() {
                                                                                  id7 = 3;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Data visualization decrease the insights and take solwer decisions',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                        ListTile(
                                                                          leading: Radio(
                                                                              value: 4,
                                                                              groupValue: id7,
                                                                              onChanged: (val) {
                                                                                setState(() {
                                                                                  id7 = 4;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'None Of the above',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                   /*  SizedBox(
                                                                      height:
                                                                          50,
                                                                    ),
                                                                    Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              '9. Which of the following behaviors will protect you form a phishing attack?',
                                                                              style: TextStyle(fontWeight: FontWeight.bold)),
                                                                          SizedBox(
                                                                            height:
                                                                                20,
                                                                          ),
                                                                          ListView(
                                                                            shrinkWrap:
                                                                                true,
                                                                            children: [
                                                                              ListTile(
                                                                                leading: Radio(
                                                                                    value: 1,
                                                                                    groupValue: id8,
                                                                                    onChanged: (val) {
                                                                                      setState(() {
                                                                                        id8 = 1;
                                                                                      });
                                                                                    }),
                                                                                title: Text('Always think before you click.', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                              ListTile(
                                                                                leading: Radio(
                                                                                    value: 2,
                                                                                    groupValue: id8,
                                                                                    onChanged: (val) {
                                                                                      setState(() {
                                                                                        id8 = 2;
                                                                                      });
                                                                                    }),
                                                                                title: Text('Trust the antivirus software will protect you', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                              ListTile(
                                                                                leading: Radio(
                                                                                    value: 3,
                                                                                    groupValue: id8,
                                                                                    onChanged: (val) {
                                                                                      setState(() {
                                                                                        id8 = 3;
                                                                                      });
                                                                                    }),
                                                                                title: Text('Email the sender to verify links in unexpected emails', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                              ListTile(
                                                                                leading: Radio(
                                                                                    value: 4,
                                                                                    groupValue: id8,
                                                                                    onChanged: (val) {
                                                                                      setState(() {
                                                                                        id8 = 4;
                                                                                      });
                                                                                    }),
                                                                                title: Text('All of the above', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                50,
                                                                          ),
                                                                          Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text('10. If our organization does not block access to an unknown website, that site is?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                SizedBox(
                                                                                  height: 20,
                                                                                ),
                                                                                ListView(
                                                                                  shrinkWrap: true,
                                                                                  children: [
                                                                                    ListTile(
                                                                                      leading: Radio(
                                                                                          value: 1,
                                                                                          groupValue: id9,
                                                                                          onChanged: (val) {
                                                                                            setState(() {
                                                                                              id9 = 1;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Safe to open if antivirus software is installed.', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                    ListTile(
                                                                                      leading: Radio(
                                                                                          value: 2,
                                                                                          groupValue: id9,
                                                                                          onChanged: (val) {
                                                                                            setState(() {
                                                                                              id9 = 2;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Safe to open after checking with the IT team.', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                    ListTile(
                                                                                      leading: Radio(
                                                                                          value: 3,
                                                                                          groupValue: id9,
                                                                                          onChanged: (val) {
                                                                                            setState(() {
                                                                                              id9 = 3;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Never safe to open', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                    ListTile(
                                                                                      leading: Radio(
                                                                                          value: 4,
                                                                                          groupValue: id9,
                                                                                          onChanged: (val) {
                                                                                            setState(() {
                                                                                              id9 = 4;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Safe to open anytime', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 50,
                                                                                ),
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                  Text('11.Which of the following is the least risky topic to post about on social media?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                  SizedBox(
                                                                                    height: 20,
                                                                                  ),
                                                                                  ListView(
                                                                                    shrinkWrap: true,
                                                                                    children: [
                                                                                      ListTile(
                                                                                        leading: Radio(
                                                                                            value: 1,
                                                                                            groupValue: id10,
                                                                                            onChanged: (val) {
                                                                                              setState(() {
                                                                                                id10 = 1;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('A picture of the menu from a meal you cooked.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                      ListTile(
                                                                                        leading: Radio(
                                                                                            value: 2,
                                                                                            groupValue: id10,
                                                                                            onChanged: (val) {
                                                                                              setState(() {
                                                                                                id10 = 2;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('The video of your pet bird Joey singing a song.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                      ListTile(
                                                                                        leading: Radio(
                                                                                            value: 3,
                                                                                            groupValue: id10,
                                                                                            onChanged: (val) {
                                                                                              setState(() {
                                                                                                id10 = 3;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('The promotion your organization just gave you.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                      ListTile(
                                                                                        leading: Radio(
                                                                                            value: 4,
                                                                                            groupValue: id10,
                                                                                            onChanged: (val) {
                                                                                              setState(() {
                                                                                                id10 = 4;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('The pictures from your daughters birthday party.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 50,
                                                                                  ),
                                                                                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    Text('12. The term "human firewall" refers to what?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                    SizedBox(
                                                                                      height: 20,
                                                                                    ),
                                                                                    ListView(
                                                                                      shrinkWrap: true,
                                                                                      children: [
                                                                                        ListTile(
                                                                                          leading: Radio(
                                                                                              value: 1,
                                                                                              groupValue: id11,
                                                                                              onChanged: (val) {
                                                                                                setState(() {
                                                                                                  id11 = 1;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('Using technology to keep the bad humans out.', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                        ListTile(
                                                                                          leading: Radio(
                                                                                              value: 2,
                                                                                              groupValue: id11,
                                                                                              onChanged: (val) {
                                                                                                setState(() {
                                                                                                  id11 = 2;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('Making ethical decisions while at work', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                        ListTile(
                                                                                          leading: Radio(
                                                                                              value: 3,
                                                                                              groupValue: id11,
                                                                                              onChanged: (val) {
                                                                                                setState(() {
                                                                                                  id11 = 3;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('The human element of cyber security.', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                        ListTile(
                                                                                          leading: Radio(
                                                                                              value: 4,
                                                                                              groupValue: id11,
                                                                                              onChanged: (val) {
                                                                                                setState(() {
                                                                                                  id11 = 4;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('Using AI to create a virtual wall that protects HR.', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 50,
                                                                                    ),
                                                                                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Text('13. Which of the following text messages likely not a smishin ( text message phishing) attack?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                      SizedBox(
                                                                                        height: 20,
                                                                                      ),
                                                                                      ListView(
                                                                                        shrinkWrap: true,
                                                                                        children: [
                                                                                          ListTile(
                                                                                            leading: Radio(
                                                                                                value: 1,
                                                                                                groupValue: id12,
                                                                                                onChanged: (val) {
                                                                                                  setState(() {
                                                                                                    id12 = 1;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('Your bank asking you to respond back with your full account number.', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            leading: Radio(
                                                                                                value: 2,
                                                                                                groupValue: id12,
                                                                                                onChanged: (val) {
                                                                                                  setState(() {
                                                                                                    id12 = 2;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('Your credit card company asking you to respond back with the CVV number from your card', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            leading: Radio(
                                                                                                value: 3,
                                                                                                groupValue: id12,
                                                                                                onChanged: (val) {
                                                                                                  setState(() {
                                                                                                    id12 = 3;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('A local restaurant offering a free appetizer for being part of their rewards program', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            leading: Radio(
                                                                                                value: 4,
                                                                                                groupValue: id12,
                                                                                                onChanged: (val) {
                                                                                                  setState(() {
                                                                                                    id12 = 4;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('Your IT team asking you to follow a link to verify your network credentials', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 50,
                                                                                      ),
                                                                                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        Text('14. Which of the following refers to fraudulent emails that target high ranking executive at major organizations or other highly visible public figures?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                        SizedBox(
                                                                                          height: 20,
                                                                                        ),
                                                                                        ListView(
                                                                                          shrinkWrap: true,
                                                                                          children: [
                                                                                            ListTile(
                                                                                              leading: Radio(
                                                                                                  value: 1,
                                                                                                  groupValue: id13,
                                                                                                  onChanged: (val) {
                                                                                                    setState(() {
                                                                                                      id13 = 1;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Smushing.', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                            ListTile(
                                                                                              leading: Radio(
                                                                                                  value: 2,
                                                                                                  groupValue: id13,
                                                                                                  onChanged: (val) {
                                                                                                    setState(() {
                                                                                                      id13 = 2;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Executive Phishing', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                            ListTile(
                                                                                              leading: Radio(
                                                                                                  value: 3,
                                                                                                  groupValue: id13,
                                                                                                  onChanged: (val) {
                                                                                                    setState(() {
                                                                                                      id13 = 3;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Clone phishing', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                            ListTile(
                                                                                              leading: Radio(
                                                                                                  value: 4,
                                                                                                  groupValue: id13,
                                                                                                  onChanged: (val) {
                                                                                                    setState(() {
                                                                                                      id13 = 4;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Whaling', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: 50,
                                                                                        ),
                                                                                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                          Text('15. Which of the following is a possible outcome of accessing network resources using a shared complex password?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                          SizedBox(
                                                                                            height: 20,
                                                                                          ),
                                                                                          ListView(
                                                                                            shrinkWrap: true,
                                                                                            children: [
                                                                                              ListTile(
                                                                                                leading: Radio(
                                                                                                    value: 1,
                                                                                                    groupValue: id14,
                                                                                                    onChanged: (val) {
                                                                                                      setState(() {
                                                                                                        id14 = 1;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is increased beacuse the password is strong.', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                              ListTile(
                                                                                                leading: Radio(
                                                                                                    value: 2,
                                                                                                    groupValue: id14,
                                                                                                    onChanged: (val) {
                                                                                                      setState(() {
                                                                                                        id14 = 2;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is increased beacuse multiple users have to protect the password', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                              ListTile(
                                                                                                leading: Radio(
                                                                                                    value: 3,
                                                                                                    groupValue: id14,
                                                                                                    onChanged: (val) {
                                                                                                      setState(() {
                                                                                                        id14 = 3;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is decreased beacuse shared passwords are more easily guessed by hackers', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                              ListTile(
                                                                                                leading: Radio(
                                                                                                    value: 4,
                                                                                                    groupValue: id14,
                                                                                                    onChanged: (val) {
                                                                                                      setState(() {
                                                                                                        id14 = 4;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is decreased because IT can not determine who used the password.', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 50,
                                                                                          ),
                                                                                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                            Text('16. Which of the following links for Amazons website would you feel most secure clicking on?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                            SizedBox(
                                                                                              height: 20,
                                                                                            ),
                                                                                            ListView(
                                                                                              shrinkWrap: true,
                                                                                              children: [
                                                                                                ListTile(
                                                                                                  leading: Radio(
                                                                                                      value: 1,
                                                                                                      groupValue: id15,
                                                                                                      onChanged: (val) {
                                                                                                        setState(() {
                                                                                                          id15 = 1;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www(//www).Prime.com/A(htpp://me.com/A)mazon.', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  leading: Radio(
                                                                                                      value: 2,
                                                                                                      groupValue: id15,
                                                                                                      onChanged: (val) {
                                                                                                        setState(() {
                                                                                                          id15 = 2;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www.a(https://www.a)mazOn.co(http://azon.co)m/', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  leading: Radio(
                                                                                                      value: 3,
                                                                                                      groupValue: id15,
                                                                                                      onChanged: (val) {
                                                                                                        setState(() {
                                                                                                          id15 = 3;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www.a(//wwww.a)mazon.co(http://azon.co)m/', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  leading: Radio(
                                                                                                      value: 4,
                                                                                                      groupValue: id15,
                                                                                                      onChanged: (val) {
                                                                                                        setState(() {
                                                                                                          id15 = 4;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www.amazon.com', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 50,
                                                                                            ),
                                                                                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                              Text('17. Which of the following allows you to minimize your security risks while using public Wi-Fi ?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                              SizedBox(
                                                                                                height: 20,
                                                                                              ),
                                                                                              ListView(
                                                                                                shrinkWrap: true,
                                                                                                children: [
                                                                                                  ListTile(
                                                                                                    leading: Radio(
                                                                                                        value: 1,
                                                                                                        groupValue: id16,
                                                                                                        onChanged: (val) {
                                                                                                          setState(() {
                                                                                                            id16 = 1;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('VPN.', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                  ListTile(
                                                                                                    leading: Radio(
                                                                                                        value: 2,
                                                                                                        groupValue: id16,
                                                                                                        onChanged: (val) {
                                                                                                          setState(() {
                                                                                                            id16 = 2;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('Managed Router', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                  ListTile(
                                                                                                    leading: Radio(
                                                                                                        value: 3,
                                                                                                        groupValue: id16,
                                                                                                        onChanged: (val) {
                                                                                                          setState(() {
                                                                                                            id16 = 3;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('Network Intrusion Prevent System', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                  ListTile(
                                                                                                    leading: Radio(
                                                                                                        value: 4,
                                                                                                        groupValue: id16,
                                                                                                        onChanged: (val) {
                                                                                                          setState(() {
                                                                                                            id16 = 4;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('VOIP', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 50,
                                                                                              ),
                                                                                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                Text('18. Before disclosing your personal information to a website, you should review this legal document that discloses some or all of the ways they gather, use, disclose, and manage your data', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                                SizedBox(
                                                                                                  height: 20,
                                                                                                ),
                                                                                                ListView(
                                                                                                  shrinkWrap: true,
                                                                                                  children: [
                                                                                                    ListTile(
                                                                                                      leading: Radio(
                                                                                                          value: 1,
                                                                                                          groupValue: id17,
                                                                                                          onChanged: (val) {
                                                                                                            setState(() {
                                                                                                              id17 = 1;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Privacy policy.', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      leading: Radio(
                                                                                                          value: 2,
                                                                                                          groupValue: id17,
                                                                                                          onChanged: (val) {
                                                                                                            setState(() {
                                                                                                              id17 = 2;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Data disclose agreement', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      leading: Radio(
                                                                                                          value: 3,
                                                                                                          groupValue: id17,
                                                                                                          onChanged: (val) {
                                                                                                            setState(() {
                                                                                                              id17 = 3;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Data guidelines', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      leading: Radio(
                                                                                                          value: 4,
                                                                                                          groupValue: id17,
                                                                                                          onChanged: (val) {
                                                                                                            setState(() {
                                                                                                              id17 = 4;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Privacy disclosure agreement', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                SizedBox(
                                                                                                  height: 50,
                                                                                                ),
                                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                  Text('19. When you do this on your mobile device, you put yourself at greatest risk from malware?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                                  SizedBox(
                                                                                                    height: 20,
                                                                                                  ),
                                                                                                  ListView(
                                                                                                    shrinkWrap: true,
                                                                                                    children: [
                                                                                                      ListTile(
                                                                                                        leading: Radio(
                                                                                                            value: 1,
                                                                                                            groupValue: id18,
                                                                                                            onChanged: (val) {
                                                                                                              setState(() {
                                                                                                                id18 = 1;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('Install apps from a third-party app store.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                      ListTile(
                                                                                                        leading: Radio(
                                                                                                            value: 2,
                                                                                                            groupValue: id18,
                                                                                                            onChanged: (val) {
                                                                                                              setState(() {
                                                                                                                id18 = 2;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('Tweak system settings to improve performance.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                      ListTile(
                                                                                                        leading: Radio(
                                                                                                            value: 3,
                                                                                                            groupValue: id18,
                                                                                                            onChanged: (val) {
                                                                                                              setState(() {
                                                                                                                id18 = 3;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('Install updates to apps and operating systems.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                      ListTile(
                                                                                                        leading: Radio(
                                                                                                            value: 4,
                                                                                                            groupValue: id18,
                                                                                                            onChanged: (val) {
                                                                                                              setState(() {
                                                                                                                id18 = 4;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('All of these actions put you at great risk.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  SizedBox(
                                                                                                    height: 50,
                                                                                                  ),
                                                                                                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                    Text('20. Privacy settings are extremely important to set when using which of the following types of websites?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                                    SizedBox(
                                                                                                      height: 20,
                                                                                                    ),
                                                                                                    ListView(
                                                                                                      shrinkWrap: true,
                                                                                                      children: [
                                                                                                        ListTile(
                                                                                                          leading: Radio(
                                                                                                              value: 1,
                                                                                                              groupValue: id19,
                                                                                                              onChanged: (val) {
                                                                                                                setState(() {
                                                                                                                  id19 = 1;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('Government.', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                        ListTile(
                                                                                                          leading: Radio(
                                                                                                              value: 2,
                                                                                                              groupValue: id19,
                                                                                                              onChanged: (val) {
                                                                                                                setState(() {
                                                                                                                  id19 = 2;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('Social Media', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                        ListTile(
                                                                                                          leading: Radio(
                                                                                                              value: 3,
                                                                                                              groupValue: id19,
                                                                                                              onChanged: (val) {
                                                                                                                setState(() {
                                                                                                                  id19 = 3;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('Informational/News', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                        ListTile(
                                                                                                          leading: Radio(
                                                                                                              value: 4,
                                                                                                              groupValue: id19,
                                                                                                              onChanged: (val) {
                                                                                                                setState(() {
                                                                                                                  id19 = 4;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('All of the Above', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    SizedBox(
                                                                                                      height: 50,
                                                                                                    ),
                                                                                                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                      Text('21. Which is the best policy to use for your passwords?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                                      SizedBox(
                                                                                                        height: 20,
                                                                                                      ),
                                                                                                      ListView(
                                                                                                        shrinkWrap: true,
                                                                                                        children: [
                                                                                                          ListTile(
                                                                                                            leading: Radio(
                                                                                                                value: 1,
                                                                                                                groupValue: id20,
                                                                                                                onChanged: (val) {
                                                                                                                  setState(() {
                                                                                                                    id20 = 1;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use the same password/passphrase for all of the accounts that you have.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                          ListTile(
                                                                                                            leading: Radio(
                                                                                                                value: 2,
                                                                                                                groupValue: id20,
                                                                                                                onChanged: (val) {
                                                                                                                  setState(() {
                                                                                                                    id20 = 2;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use a selection of 3-4 complex passwords/passphrases for all of the accounts that you have.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                          ListTile(
                                                                                                            leading: Radio(
                                                                                                                value: 3,
                                                                                                                groupValue: id20,
                                                                                                                onChanged: (val) {
                                                                                                                  setState(() {
                                                                                                                    id20 = 3;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use something personal that is easy to remember, like your date of birth or the street that you live on.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                          ListTile(
                                                                                                            leading: Radio(
                                                                                                                value: 4,
                                                                                                                groupValue: id20,
                                                                                                                onChanged: (val) {
                                                                                                                  setState(() {
                                                                                                                    id20 = 4;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use a unique, complex password/passphrase for each account that you have.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      SizedBox(
                                                                                                        height: 50,
                                                                                                      ),
                                                                                                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                        Text('22. Which of the following is not a risk you face when opening an unknown attachment contained within an email message?', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                                        SizedBox(
                                                                                                          height: 20,
                                                                                                        ),
                                                                                                        ListView(
                                                                                                          shrinkWrap: true,
                                                                                                          children: [
                                                                                                            ListTile(
                                                                                                              leading: Radio(
                                                                                                                  value: 1,
                                                                                                                  groupValue: id21,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id21 = 1;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Ransomware.', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                            ListTile(
                                                                                                              leading: Radio(
                                                                                                                  value: 2,
                                                                                                                  groupValue: id21,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id21 = 2;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Threatware', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                            ListTile(
                                                                                                              leading: Radio(
                                                                                                                  value: 3,
                                                                                                                  groupValue: id21,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id21 = 3;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Malware', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                            ListTile(
                                                                                                              leading: Radio(
                                                                                                                  value: 4,
                                                                                                                  groupValue: id21,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id21 = 4;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Spyware', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),

                                                                                                        SizedBox(
                                                                                                          height: 50,
                                                                                                        ),

                                                                                                        // Section 3
                                                                                                        Container(
                                                                                                          child: Text(
                                                                                                            ' Section 3:  '
                                                                                                            'Select your level of agreement with the following statements. Make sure to respond to each in order to proceed.',
                                                                                                            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                                                                                                          ),
                                                                                                        ),

                                                                                                        SizedBox(
                                                                                                          height: 20,
                                                                                                        ),
                                                                                                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                          Text('1. I am confident in my ability to protect my organization from online and social engineering threats.', style: TextStyle(fontWeight: FontWeight.bold)),
                                                                                                          SizedBox(
                                                                                                            height: 20,
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            children: [
                                                                                                              Radio(
                                                                                                                  value: 1,
                                                                                                                  groupValue: id22,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id22 = 1;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Strongly Disagree', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio(
                                                                                                                  value: 2,
                                                                                                                  groupValue: id22,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id22 = 2;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Disagree', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio(
                                                                                                                  value: 3,
                                                                                                                  groupValue: id22,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id22 = 3;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Neutral', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio(
                                                                                                                  value: 4,
                                                                                                                  groupValue: id22,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id22 = 4;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Agree', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio(
                                                                                                                  value: 5,
                                                                                                                  groupValue: id22,
                                                                                                                  onChanged: (val) {
                                                                                                                    setState(() {
                                                                                                                      id22 = 5;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text(' Strongly Agree', style: new TextStyle(fontSize: 16)),
                                                                                                            ],
                                                                                                          ), */
                                                                                                          SizedBox(
                                                                                                            height: 50,
                                                                                                          ),
                                                                                                          Container(
                                                                                                            alignment: Alignment.center,
                                                                                                            child: ElevatedButton(
                                                                                                                onPressed: () {
                                                                                                                  if (_formKey.currentState!.validate()) {
                                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                                      const SnackBar(content: Text('Submiting Data')),
                                                                                                                    );
                                                                                                                  }
                                                                                                                  
                                                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYou()));
                                                                                                                },
                                                                                                                //TODO add record data fucntionlity
                                                                                                             
                                                                                                                //TODO add validation for the entire form.

                                                                                                                child: Text('Submit',
                                                                                                                    style: TextStyle(
                                                                                                                      fontSize: 20,
                                                                                                                    )),
                                                                                                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0))))),
                                                                                                          )
                                                                                                        ])
                                                                                                      ])
                                                                                                    ])
                                                                                                  ])
                                                                                                ])
                                                                                              ])
                                                                                            ])
                                                                                          )
                                                                                        )
                                                                                      )
                                                                                    )
                                                                                  );
                                                                               /*  ])
                                                                              ])
                                                                        ])
                                                                  ])
                                                            ]) */
           /*                                            ])
                                                ])
                                          ])
                                    ])
                              ])
                        ))))); */
  }
}
