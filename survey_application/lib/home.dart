import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_application/thankyou.dart';

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

// answers enum
enum Q1Answer {
  noAnswer,
  StronglyDisagree,
  Disagree,
  Neutral,
  Agree,
  StronglyAgree
}

enum Q2Answer { noAnswer, none, Anually, Quarterly, Monthly }

//Q3 are the checkboxes
enum Q4Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q5Answer { noAnswer, Option1, Option2, Option3, AlloftheAbove }
enum Q6Answer { noAnswer, Frequently, Sometimes, AlltheTime, Never }
enum Q7Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q8Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q9Answer { noAnswer, option1, Option2, Option3, AlloftheAbove }
enum Q10Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q11Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q12Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q13Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q14Answer { noAnswer, Smushing, ExecutivePhishing, ClonePhishing, Whaling }
enum Q15Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q16Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q17Answer {
  noAnswer,
  VPN,
  ManagedRouter,
  NetworkIntrusionPreventSystem,
  VOIP
}
enum Q18Answer {
  noAnswer,
  PrivacyPolicy,
  DataDisclosureAgreement,
  DataGuidelines,
  PrivacyDisclosureAgreement
}
enum Q19Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q20Answer {
  noAnswer,
  Government,
  SocialMedia,
  InformationalNews,
  AlloftheAbove
}
enum Q21Answer { noAnswer, Option1, Option2, Option3, Option4 }
enum Q22Answer { noAnswer, Ransomware, Threatware, Malware, Spyware }
enum Q23Answer {
  noAnswer,
  StronglyDisagree,
  Disagree,
  Neutral,
  Agree,
  StronglyAgree
}

class HomeState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameField;
  // radio buttons values
  Q1Answer? _q1answer = Q1Answer.noAnswer;
  Q2Answer? _q2answer = Q2Answer.noAnswer;
  Q4Answer? _q4answer = Q4Answer.noAnswer;
  Q5Answer? _q5answer = Q5Answer.noAnswer;
  Q6Answer? _q6answer = Q6Answer.noAnswer;
  Q7Answer? _q7answer = Q7Answer.noAnswer;
  Q8Answer? _q8answer = Q8Answer.noAnswer;
  Q9Answer? _q9answer = Q9Answer.noAnswer;
  Q10Answer? _q10answer = Q10Answer.noAnswer;
  Q11Answer? _q11answer = Q11Answer.noAnswer;
  Q12Answer? _q12answer = Q12Answer.noAnswer;
  Q13Answer? _q13answer = Q13Answer.noAnswer;
  Q14Answer? _q14answer = Q14Answer.noAnswer;
  Q15Answer? _q15answer = Q15Answer.noAnswer;
  Q16Answer? _q16answer = Q16Answer.noAnswer;
  Q17Answer? _q17answer = Q17Answer.noAnswer;
  Q18Answer? _q18answer = Q18Answer.noAnswer;
  Q19Answer? _q19answer = Q19Answer.noAnswer;
  Q20Answer? _q20answer = Q20Answer.noAnswer;
  Q21Answer? _q21answer = Q21Answer.noAnswer;
  Q22Answer? _q22answer = Q22Answer.noAnswer;
  Q23Answer? _q23answer = Q23Answer.noAnswer;

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
                                          '1. I am confident I can correctly identify online threats',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Radio<Q1Answer>(
                                              value: Q1Answer.StronglyDisagree,
                                              groupValue: _q1answer,
                                              onChanged: (Q1Answer? value) {
                                                setState(() {
                                                  _q1answer = value;
                                                });
                                              }),
                                          Text('Strongly Disagree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q1Answer>(
                                              value: Q1Answer.Disagree,
                                              groupValue: _q1answer,
                                              onChanged: (Q1Answer? value) {
                                                setState(() {
                                                  _q1answer = value;
                                                });
                                              }),
                                          Text('Disagree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q1Answer>(
                                              value: Q1Answer.Neutral,
                                              groupValue: _q1answer,
                                              onChanged: (Q1Answer? value) {
                                                setState(() {
                                                  _q1answer = value;
                                                });
                                              }),
                                          Text('Neutral',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q1Answer>(
                                              value: Q1Answer.Agree,
                                              groupValue: _q1answer,
                                              onChanged: (Q1Answer? value) {
                                                setState(() {
                                                  _q1answer = value;
                                                });
                                              }),
                                          Text('Agree',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q1Answer>(
                                              value: Q1Answer.StronglyAgree,
                                              groupValue: _q1answer,
                                              onChanged: (Q1Answer? value) {
                                                setState(() {
                                                  _q1answer = value;
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
                                          '2. How many times have you taken security awareness training in the last year?',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Radio<Q2Answer>(
                                              value: Q2Answer.none,
                                              groupValue: _q2answer,
                                              onChanged: (Q2Answer? value) {
                                                setState(() {
                                                  _q2answer = value;
                                                });
                                              }),
                                          Text('None',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q2Answer>(
                                              value: Q2Answer.Anually,
                                              groupValue: _q2answer,
                                              onChanged: (Q2Answer? value) {
                                                setState(() {
                                                  _q2answer = value;
                                                });
                                              }),
                                          Text('Once(Anually)',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q2Answer>(
                                              value: Q2Answer.Quarterly,
                                              groupValue: _q2answer,
                                              onChanged: (Q2Answer? value) {
                                                setState(() {
                                                  _q2answer = value;
                                                });
                                              }),
                                          Text('4 times(Quarterly)',
                                              style:
                                                  new TextStyle(fontSize: 16)),
                                          Radio<Q2Answer>(
                                              value: Q2Answer.Monthly,
                                              groupValue: _q2answer,
                                              onChanged: (Q2Answer? value) {
                                                setState(() {
                                                  _q2answer = value;
                                                });
                                              }),
                                          Text('10 -12 times (monthly)',
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
                                SizedBox(
                                  height: 20,
                                ),
                                //TODO enter checkbox values into firebase.
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '3. I receive a friend request from someone I do not recognize,but they have a very attractive picture.What should I do with this friends request?',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: values.keys
                                            .map(
                                              (key) => CheckboxListTile(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                value: values[key],
                                                onChanged: (value) => setState(
                                                    () => values[key] = value!),
                                                title: Text(key),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                '4. Which of the following is the most secure practice when creating passwords?',
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
                                                  leading: Radio<Q4Answer>(
                                                      value: Q4Answer.Option1,
                                                      groupValue: _q4answer,
                                                      onChanged:
                                                          (Q4Answer? value) {
                                                        setState(() {
                                                          _q4answer = value;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Focus on length, rather than complexity, when creating passwords.',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                ListTile(
                                                  leading: Radio<Q4Answer>(
                                                      value: Q4Answer.Option2,
                                                      groupValue: _q4answer,
                                                      onChanged:
                                                          (Q4Answer? value) {
                                                        setState(() {
                                                          _q4answer = value;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Use personal information that is easy to remember.',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                ListTile(
                                                  leading: Radio<Q4Answer>(
                                                      value: Q4Answer.Option3,
                                                      groupValue: _q4answer,
                                                      onChanged:
                                                          (Q4Answer? value) {
                                                        setState(() {
                                                          _q4answer = value;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Use a word with a single number before or after.',
                                                      style: new TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                ListTile(
                                                  leading: Radio<Q4Answer>(
                                                      value: Q4Answer.Option4,
                                                      groupValue: _q4answer,
                                                      onChanged:
                                                          (Q4Answer? value) {
                                                        setState(() {
                                                          _q4answer = value;
                                                        });
                                                      }),
                                                  title: Text(
                                                      'Avoid special characters and focus on upper and lower case characters and numbers.',
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
                                                      '5. You receive an email from a very wealthy individual requesting your help with an urgent matter.'
                                                      'The message indicates you can make a large sum of money with only minimal '
                                                      'effort on your part.What should you do?',
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
                                                        leading:
                                                            Radio<Q5Answer>(
                                                                value: Q5Answer
                                                                    .Option1,
                                                                groupValue:
                                                                    _q5answer,
                                                                onChanged:
                                                                    (Q5Answer?
                                                                        value) {
                                                                  setState(() {
                                                                    _q5answer =
                                                                        value;
                                                                  });
                                                                }),
                                                        title: Text(
                                                            'Report the message as suspicious using the appropriate email tool.',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                      ListTile(
                                                        leading:
                                                            Radio<Q5Answer>(
                                                                value: Q5Answer
                                                                    .Option2,
                                                                groupValue:
                                                                    _q5answer,
                                                                onChanged:
                                                                    (Q5Answer?
                                                                        value) {
                                                                  setState(() {
                                                                    _q5answer =
                                                                        value;
                                                                  });
                                                                }),
                                                        title: Text(
                                                            'Reply to the sender,telling them you know this is a scam.',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                      ListTile(
                                                        leading:
                                                            Radio<Q5Answer>(
                                                                value: Q5Answer
                                                                    .Option3,
                                                                groupValue:
                                                                    _q5answer,
                                                                onChanged:
                                                                    (Q5Answer?
                                                                        value) {
                                                                  setState(() {
                                                                    _q5answer =
                                                                        value;
                                                                  });
                                                                }),
                                                        title: Text(
                                                            'Ignore the request and delete the message.',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        16)),
                                                      ),
                                                      ListTile(
                                                        leading: Radio<
                                                                Q5Answer>(
                                                            value: Q5Answer
                                                                .AlloftheAbove,
                                                            groupValue:
                                                                _q5answer,
                                                            onChanged:
                                                                (Q5Answer?
                                                                    value) {
                                                              setState(() {
                                                                _q5answer =
                                                                    value;
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
                                                            '6. It is acceptable to post things on social media that I would not say in public?',
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
                                                              leading: Radio<
                                                                      Q6Answer>(
                                                                  value: Q6Answer
                                                                      .Frequently,
                                                                  groupValue:
                                                                      _q6answer,
                                                                  onChanged:
                                                                      (Q6Answer?
                                                                          value) {
                                                                    setState(
                                                                        () {
                                                                      _q6answer =
                                                                          value;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Frequently.',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            ListTile(
                                                              leading: Radio<
                                                                      Q6Answer>(
                                                                  value: Q6Answer
                                                                      .Sometimes,
                                                                  groupValue:
                                                                      _q6answer,
                                                                  onChanged:
                                                                      (Q6Answer?
                                                                          value) {
                                                                    setState(
                                                                        () {
                                                                      _q6answer =
                                                                          value;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Sometimes',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            ListTile(
                                                              leading: Radio<
                                                                      Q6Answer>(
                                                                  value: Q6Answer
                                                                      .AlltheTime,
                                                                  groupValue:
                                                                      _q6answer,
                                                                  onChanged:
                                                                      (Q6Answer?
                                                                          value) {
                                                                    setState(
                                                                        () {
                                                                      _q6answer =
                                                                          value;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'All the time',
                                                                  style: new TextStyle(
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            ListTile(
                                                              leading: Radio<
                                                                      Q6Answer>(
                                                                  value: Q6Answer
                                                                      .Never,
                                                                  groupValue:
                                                                      _q6answer,
                                                                  onChanged:
                                                                      (Q6Answer?
                                                                          value) {
                                                                    setState(
                                                                        () {
                                                                      _q6answer =
                                                                          value;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Never',
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
                                                                  '7. Which of the following actions should you avoid when using free Wi-Fi?',
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
                                                                    leading: Radio<
                                                                            Q7Answer>(
                                                                        value: Q7Answer
                                                                            .Option1,
                                                                        groupValue:
                                                                            _q7answer,
                                                                        onChanged:
                                                                            (Q7Answer?
                                                                                value) {
                                                                          setState(
                                                                              () {
                                                                            _q7answer =
                                                                                value;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Watching a YouTube video.',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                  ListTile(
                                                                    leading: Radio<
                                                                            Q7Answer>(
                                                                        value: Q7Answer
                                                                            .Option2,
                                                                        groupValue:
                                                                            _q7answer,
                                                                        onChanged:
                                                                            (Q7Answer?
                                                                                value) {
                                                                          setState(
                                                                              () {
                                                                            _q7answer =
                                                                                value;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Checking the menu for a restaurant',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                  ListTile(
                                                                    leading: Radio<
                                                                            Q7Answer>(
                                                                        value: Q7Answer
                                                                            .Option3,
                                                                        groupValue:
                                                                            _q7answer,
                                                                        onChanged:
                                                                            (Q7Answer?
                                                                                value) {
                                                                          setState(
                                                                              () {
                                                                            _q7answer =
                                                                                value;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Checking your email',
                                                                        style: new TextStyle(
                                                                            fontSize:
                                                                                16)),
                                                                  ),
                                                                  ListTile(
                                                                    leading: Radio<
                                                                            Q7Answer>(
                                                                        value: Q7Answer
                                                                            .Option4,
                                                                        groupValue:
                                                                            _q7answer,
                                                                        onChanged:
                                                                            (Q7Answer?
                                                                                value) {
                                                                          setState(
                                                                              () {
                                                                            _q7answer =
                                                                                value;
                                                                          });
                                                                        }),
                                                                    title: Text(
                                                                        'Checking the latest news',
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
                                                                        '8. Tailgating is a social engineering technique where the bad guys...',
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
                                                                          leading: Radio<Q8Answer>(
                                                                              value: Q8Answer.Option1,
                                                                              groupValue: _q8answer,
                                                                              onChanged: (Q8Answer? value) {
                                                                                setState(() {
                                                                                  _q8answer = value;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Offer you something enticing in exchange for organizational data access credentials.',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                        ListTile(
                                                                          leading: Radio<Q8Answer>(
                                                                              value: Q8Answer.Option2,
                                                                              groupValue: _q8answer,
                                                                              onChanged: (Q8Answer? value) {
                                                                                setState(() {
                                                                                  _q8answer = value;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Leave a usb device labeled "Confidential Salary Information" which really contains malware,'
                                                                              ' in the organizations parking lot.',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                        ListTile(
                                                                          leading: Radio<Q8Answer>(
                                                                              value: Q8Answer.Option3,
                                                                              groupValue: _q8answer,
                                                                              onChanged: (Q8Answer? value) {
                                                                                setState(() {
                                                                                  _q8answer = value;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Ask you to hold the door for them because they left their access badge on their desk.',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                        ListTile(
                                                                          leading: Radio<Q8Answer>(
                                                                              value: Q8Answer.Option4,
                                                                              groupValue: _q8answer,
                                                                              onChanged: (Q8Answer? value) {
                                                                                setState(() {
                                                                                  _q8answer = value;
                                                                                });
                                                                              }),
                                                                          title: Text(
                                                                              'Pose as a researcher and offer you money in exchange for answering questions about your organizations security.',
                                                                              style: new TextStyle(fontSize: 16)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
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
                                                                                leading: Radio<Q9Answer>(
                                                                                    value: Q9Answer.option1,
                                                                                    groupValue: _q9answer,
                                                                                    onChanged: (Q9Answer? value) {
                                                                                      setState(() {
                                                                                        _q9answer = value;
                                                                                      });
                                                                                    }),
                                                                                title: Text('Always think before you click.', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                              ListTile(
                                                                                leading: Radio<Q9Answer>(
                                                                                    value: Q9Answer.Option2,
                                                                                    groupValue: _q9answer,
                                                                                    onChanged: (Q9Answer? value) {
                                                                                      setState(() {
                                                                                        _q9answer = value;
                                                                                      });
                                                                                    }),
                                                                                title: Text('Trust the antivirus software will protect you', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                              ListTile(
                                                                                leading: Radio<Q9Answer>(
                                                                                    value: Q9Answer.Option3,
                                                                                    groupValue: _q9answer,
                                                                                    onChanged: (Q9Answer? value) {
                                                                                      setState(() {
                                                                                        _q9answer = value;
                                                                                      });
                                                                                    }),
                                                                                title: Text('Email the sender to verify links in unexpected emails', style: new TextStyle(fontSize: 16)),
                                                                              ),
                                                                              ListTile(
                                                                                leading: Radio<Q9Answer>(
                                                                                    value: Q9Answer.AlloftheAbove,
                                                                                    groupValue: _q9answer,
                                                                                    onChanged: (Q9Answer? value) {
                                                                                      setState(() {
                                                                                        _q9answer = value;
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
                                                                                      leading: Radio<Q10Answer>(
                                                                                          value: Q10Answer.Option1,
                                                                                          groupValue: _q10answer,
                                                                                          onChanged: (Q10Answer? value) {
                                                                                            setState(() {
                                                                                              _q10answer = value;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Safe to open if antivirus software is installed.', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                    ListTile(
                                                                                      leading: Radio<Q10Answer>(
                                                                                          value: Q10Answer.Option2,
                                                                                          groupValue: _q10answer,
                                                                                          onChanged: (Q10Answer? value) {
                                                                                            setState(() {
                                                                                              _q10answer = value;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Safe to open after checking with the IT team.', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                    ListTile(
                                                                                      leading: Radio<Q10Answer>(
                                                                                          value: Q10Answer.Option3,
                                                                                          groupValue: _q10answer,
                                                                                          onChanged: (Q10Answer? value) {
                                                                                            setState(() {
                                                                                              _q10answer = value;
                                                                                            });
                                                                                          }),
                                                                                      title: Text('Never safe to open', style: new TextStyle(fontSize: 16)),
                                                                                    ),
                                                                                    ListTile(
                                                                                      leading: Radio<Q10Answer>(
                                                                                          value: Q10Answer.Option4,
                                                                                          groupValue: _q10answer,
                                                                                          onChanged: (Q10Answer? value) {
                                                                                            setState(() {
                                                                                              _q10answer = value;
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
                                                                                        leading: Radio<Q11Answer>(
                                                                                            value: Q11Answer.Option1,
                                                                                            groupValue: _q11answer,
                                                                                            onChanged: (Q11Answer? value) {
                                                                                              setState(() {
                                                                                                _q11answer = value;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('A picture of the menu from a meal you cooked.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                      ListTile(
                                                                                        leading: Radio<Q11Answer>(
                                                                                            value: Q11Answer.Option2,
                                                                                            groupValue: _q11answer,
                                                                                            onChanged: (Q11Answer? value) {
                                                                                              setState(() {
                                                                                                _q11answer = value;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('The video of your pet bird Joey singing a song.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                      ListTile(
                                                                                        leading: Radio<Q11Answer>(
                                                                                            value: Q11Answer.Option3,
                                                                                            groupValue: _q11answer,
                                                                                            onChanged: (Q11Answer? value) {
                                                                                              setState(() {
                                                                                                _q11answer = value;
                                                                                              });
                                                                                            }),
                                                                                        title: Text('The promotion your organization just gave you.', style: new TextStyle(fontSize: 16)),
                                                                                      ),
                                                                                      ListTile(
                                                                                        leading: Radio<Q11Answer>(
                                                                                            value: Q11Answer.Option4,
                                                                                            groupValue: _q11answer,
                                                                                            onChanged: (Q11Answer? value) {
                                                                                              setState(() {
                                                                                                _q11answer = value;
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
                                                                                          leading: Radio<Q12Answer>(
                                                                                              value: Q12Answer.Option1,
                                                                                              groupValue: _q12answer,
                                                                                              onChanged: (Q12Answer? value) {
                                                                                                setState(() {
                                                                                                  _q12answer = value;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('Using technology to keep the bad humans out.', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                        ListTile(
                                                                                          leading: Radio<Q12Answer>(
                                                                                              value: Q12Answer.Option2,
                                                                                              groupValue: _q12answer,
                                                                                              onChanged: (Q12Answer? value) {
                                                                                                setState(() {
                                                                                                  _q12answer = value;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('Making ethical decisions while at work', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                        ListTile(
                                                                                          leading: Radio<Q12Answer>(
                                                                                              value: Q12Answer.Option3,
                                                                                              groupValue: _q12answer,
                                                                                              onChanged: (Q12Answer? value) {
                                                                                                setState(() {
                                                                                                  _q12answer = value;
                                                                                                });
                                                                                              }),
                                                                                          title: Text('The human element of cyber security.', style: new TextStyle(fontSize: 16)),
                                                                                        ),
                                                                                        ListTile(
                                                                                          leading: Radio<Q12Answer>(
                                                                                              value: Q12Answer.Option4,
                                                                                              groupValue: _q12answer,
                                                                                              onChanged: (Q12Answer? value) {
                                                                                                setState(() {
                                                                                                  _q12answer = value;
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
                                                                                            leading: Radio<Q13Answer>(
                                                                                                value: Q13Answer.Option1,
                                                                                                groupValue: _q13answer,
                                                                                                onChanged: (Q13Answer? value) {
                                                                                                  setState(() {
                                                                                                    _q13answer = value;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('Your bank asking you to respond back with your full account number.', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            leading: Radio<Q13Answer>(
                                                                                                value: Q13Answer.Option2,
                                                                                                groupValue: _q13answer,
                                                                                                onChanged: (Q13Answer? value) {
                                                                                                  setState(() {
                                                                                                    _q13answer = value;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('Your credit card company asking you to respond back with the CVV number from your card', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            leading: Radio<Q13Answer>(
                                                                                                value: Q13Answer.Option3,
                                                                                                groupValue: _q13answer,
                                                                                                onChanged: (Q13Answer? value) {
                                                                                                  setState(() {
                                                                                                    _q13answer = value;
                                                                                                  });
                                                                                                }),
                                                                                            title: Text('A local restaurant offering a free appetizer for being part of their rewards program', style: new TextStyle(fontSize: 16)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            leading: Radio<Q13Answer>(
                                                                                                value: Q13Answer.Option4,
                                                                                                groupValue: _q13answer,
                                                                                                onChanged: (Q13Answer? value) {
                                                                                                  setState(() {
                                                                                                    _q13answer = value;
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
                                                                                              leading: Radio<Q14Answer>(
                                                                                                  value: Q14Answer.Smushing,
                                                                                                  groupValue: _q14answer,
                                                                                                  onChanged: (Q14Answer? value) {
                                                                                                    setState(() {
                                                                                                      _q14answer = value;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Smushing.', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                            ListTile(
                                                                                              leading: Radio<Q14Answer>(
                                                                                                  value: Q14Answer.ExecutivePhishing,
                                                                                                  groupValue: _q14answer,
                                                                                                  onChanged: (Q14Answer? value) {
                                                                                                    setState(() {
                                                                                                      _q14answer = value;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Executive Phishing', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                            ListTile(
                                                                                              leading: Radio<Q14Answer>(
                                                                                                  value: Q14Answer.ClonePhishing,
                                                                                                  groupValue: _q14answer,
                                                                                                  onChanged: (Q14Answer? value) {
                                                                                                    setState(() {
                                                                                                      _q14answer = value;
                                                                                                    });
                                                                                                  }),
                                                                                              title: Text('Clone phishing', style: new TextStyle(fontSize: 16)),
                                                                                            ),
                                                                                            ListTile(
                                                                                              leading: Radio<Q14Answer>(
                                                                                                  value: Q14Answer.Whaling,
                                                                                                  groupValue: _q14answer,
                                                                                                  onChanged: (Q14Answer? value) {
                                                                                                    setState(() {
                                                                                                      _q14answer = value;
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
                                                                                                leading: Radio<Q15Answer>(
                                                                                                    value: Q15Answer.Option1,
                                                                                                    groupValue: _q15answer,
                                                                                                    onChanged: (Q15Answer? value) {
                                                                                                      setState(() {
                                                                                                        _q15answer = value;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is increased beacuse the password is strong.', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                              ListTile(
                                                                                                leading: Radio<Q15Answer>(
                                                                                                    value: Q15Answer.Option2,
                                                                                                    groupValue: _q15answer,
                                                                                                    onChanged: (Q15Answer? value) {
                                                                                                      setState(() {
                                                                                                        _q15answer = value;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is increased beacuse multiple users have to protect the password', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                              ListTile(
                                                                                                leading: Radio<Q15Answer>(
                                                                                                    value: Q15Answer.Option3,
                                                                                                    groupValue: _q15answer,
                                                                                                    onChanged: (Q15Answer? value) {
                                                                                                      setState(() {
                                                                                                        _q15answer = value;
                                                                                                      });
                                                                                                    }),
                                                                                                title: Text('Network security is decreased beacuse shared passwords are more easily guessed by hackers', style: new TextStyle(fontSize: 16)),
                                                                                              ),
                                                                                              ListTile(
                                                                                                leading: Radio<Q15Answer>(
                                                                                                    value: Q15Answer.Option4,
                                                                                                    groupValue: _q15answer,
                                                                                                    onChanged: (Q15Answer? value) {
                                                                                                      setState(() {
                                                                                                        _q15answer = value;
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
                                                                                                  leading: Radio<Q16Answer>(
                                                                                                      value: Q16Answer.Option1,
                                                                                                      groupValue: _q16answer,
                                                                                                      onChanged: (Q16Answer? value) {
                                                                                                        setState(() {
                                                                                                          _q16answer = value;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www(//www).Prime.com/A(htpp://me.com/A)mazon.', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  leading: Radio<Q16Answer>(
                                                                                                      value: Q16Answer.Option2,
                                                                                                      groupValue: _q16answer,
                                                                                                      onChanged: (Q16Answer? value) {
                                                                                                        setState(() {
                                                                                                          _q16answer = value;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www.a(https://www.a)mazOn.co(http://azon.co)m/', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  leading: Radio<Q16Answer>(
                                                                                                      value: Q16Answer.Option3,
                                                                                                      groupValue: _q16answer,
                                                                                                      onChanged: (Q16Answer? value) {
                                                                                                        setState(() {
                                                                                                          _q16answer = value;
                                                                                                        });
                                                                                                      }),
                                                                                                  title: Text('https://www.a(//wwww.a)mazon.co(http://azon.co)m/', style: new TextStyle(fontSize: 16)),
                                                                                                ),
                                                                                                ListTile(
                                                                                                  leading: Radio<Q16Answer>(
                                                                                                      value: Q16Answer.Option4,
                                                                                                      groupValue: _q16answer,
                                                                                                      onChanged: (Q16Answer? value) {
                                                                                                        setState(() {
                                                                                                          _q16answer = value;
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
                                                                                                    leading: Radio<Q17Answer>(
                                                                                                        value: Q17Answer.VPN,
                                                                                                        groupValue: _q17answer,
                                                                                                        onChanged: (Q17Answer? value) {
                                                                                                          setState(() {
                                                                                                            _q17answer = value;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('VPN.', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                  ListTile(
                                                                                                    leading: Radio<Q17Answer>(
                                                                                                        value: Q17Answer.ManagedRouter,
                                                                                                        groupValue: _q17answer,
                                                                                                        onChanged: (Q17Answer? value) {
                                                                                                          setState(() {
                                                                                                            _q17answer = value;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('Managed Router', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                  ListTile(
                                                                                                    leading: Radio<Q17Answer>(
                                                                                                        value: Q17Answer.NetworkIntrusionPreventSystem,
                                                                                                        groupValue: _q17answer,
                                                                                                        onChanged: (Q17Answer? value) {
                                                                                                          setState(() {
                                                                                                            _q17answer = value;
                                                                                                          });
                                                                                                        }),
                                                                                                    title: Text('Network Intrusion Prevent System', style: new TextStyle(fontSize: 16)),
                                                                                                  ),
                                                                                                  ListTile(
                                                                                                    leading: Radio<Q17Answer>(
                                                                                                        value: Q17Answer.VOIP,
                                                                                                        groupValue: _q17answer,
                                                                                                        onChanged: (Q17Answer? value) {
                                                                                                          setState(() {
                                                                                                            _q17answer = value;
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
                                                                                                      leading: Radio<Q18Answer>(
                                                                                                          value: Q18Answer.PrivacyPolicy,
                                                                                                          groupValue: _q18answer,
                                                                                                          onChanged: (Q18Answer? value) {
                                                                                                            setState(() {
                                                                                                              _q18answer = value;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Privacy policy.', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      leading: Radio<Q18Answer>(
                                                                                                          value: Q18Answer.DataDisclosureAgreement,
                                                                                                          groupValue: _q18answer,
                                                                                                          onChanged: (Q18Answer? value) {
                                                                                                            setState(() {
                                                                                                              _q18answer = value;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Data disclose agreement', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      leading: Radio<Q18Answer>(
                                                                                                          value: Q18Answer.DataGuidelines,
                                                                                                          groupValue: _q18answer,
                                                                                                          onChanged: (Q18Answer? value) {
                                                                                                            setState(() {
                                                                                                              _q18answer = value;
                                                                                                            });
                                                                                                          }),
                                                                                                      title: Text('Data guidelines', style: new TextStyle(fontSize: 16)),
                                                                                                    ),
                                                                                                    ListTile(
                                                                                                      leading: Radio<Q18Answer>(
                                                                                                          value: Q18Answer.PrivacyDisclosureAgreement,
                                                                                                          groupValue: _q18answer,
                                                                                                          onChanged: (Q18Answer? value) {
                                                                                                            setState(() {
                                                                                                              _q18answer = value;
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
                                                                                                        leading: Radio<Q19Answer>(
                                                                                                            value: Q19Answer.Option1,
                                                                                                            groupValue: _q19answer,
                                                                                                            onChanged: (Q19Answer? value) {
                                                                                                              setState(() {
                                                                                                                _q19answer = value;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('Install apps from a third-party app store.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                      ListTile(
                                                                                                        leading: Radio<Q19Answer>(
                                                                                                            value: Q19Answer.Option2,
                                                                                                            groupValue: _q19answer,
                                                                                                            onChanged: (Q19Answer? value) {
                                                                                                              setState(() {
                                                                                                                _q19answer = value;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('Tweak system settings to improve performance.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                      ListTile(
                                                                                                        leading: Radio<Q19Answer>(
                                                                                                            value: Q19Answer.Option3,
                                                                                                            groupValue: _q19answer,
                                                                                                            onChanged: (Q19Answer? value) {
                                                                                                              setState(() {
                                                                                                                _q19answer = value;
                                                                                                              });
                                                                                                            }),
                                                                                                        title: Text('Install updates to apps and operating systems.', style: new TextStyle(fontSize: 16)),
                                                                                                      ),
                                                                                                      ListTile(
                                                                                                        leading: Radio<Q19Answer>(
                                                                                                            value: Q19Answer.Option4,
                                                                                                            groupValue: _q19answer,
                                                                                                            onChanged: (Q19Answer? value) {
                                                                                                              setState(() {
                                                                                                                _q19answer = value;
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
                                                                                                          leading: Radio<Q20Answer>(
                                                                                                              value: Q20Answer.Government,
                                                                                                              groupValue: _q20answer,
                                                                                                              onChanged: (Q20Answer? value) {
                                                                                                                setState(() {
                                                                                                                  _q20answer = value;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('Government.', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                        ListTile(
                                                                                                          leading: Radio<Q20Answer>(
                                                                                                              value: Q20Answer.SocialMedia,
                                                                                                              groupValue: _q20answer,
                                                                                                              onChanged: (Q20Answer? value) {
                                                                                                                setState(() {
                                                                                                                  _q20answer = value;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('Social Media', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                        ListTile(
                                                                                                          leading: Radio<Q20Answer>(
                                                                                                              value: Q20Answer.InformationalNews,
                                                                                                              groupValue: _q20answer,
                                                                                                              onChanged: (Q20Answer? value) {
                                                                                                                setState(() {
                                                                                                                  _q20answer = value;
                                                                                                                });
                                                                                                              }),
                                                                                                          title: Text('Informational/News', style: new TextStyle(fontSize: 16)),
                                                                                                        ),
                                                                                                        ListTile(
                                                                                                          leading: Radio<Q20Answer>(
                                                                                                              value: Q20Answer.AlloftheAbove,
                                                                                                              groupValue: _q20answer,
                                                                                                              onChanged: (Q20Answer? value) {
                                                                                                                setState(() {
                                                                                                                  _q20answer = value;
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
                                                                                                            leading: Radio<Q21Answer>(
                                                                                                                value: Q21Answer.Option1,
                                                                                                                groupValue: _q21answer,
                                                                                                                onChanged: (Q21Answer? value) {
                                                                                                                  setState(() {
                                                                                                                    _q21answer = value;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use the same password/passphrase for all of the accounts that you have.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                          ListTile(
                                                                                                            leading: Radio<Q21Answer>(
                                                                                                                value: Q21Answer.Option2,
                                                                                                                groupValue: _q21answer,
                                                                                                                onChanged: (Q21Answer? value) {
                                                                                                                  setState(() {
                                                                                                                    _q21answer = value;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use a selection of 3-4 complex passwords/passphrases for all of the accounts that you have.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                          ListTile(
                                                                                                            leading: Radio<Q21Answer>(
                                                                                                                value: Q21Answer.Option3,
                                                                                                                groupValue: _q21answer,
                                                                                                                onChanged: (Q21Answer? value) {
                                                                                                                  setState(() {
                                                                                                                    _q21answer = value;
                                                                                                                  });
                                                                                                                }),
                                                                                                            title: Text('Use something personal that is easy to remember, like your date of birth or the street that you live on.', style: new TextStyle(fontSize: 16)),
                                                                                                          ),
                                                                                                          ListTile(
                                                                                                            leading: Radio<Q21Answer>(
                                                                                                                value: Q21Answer.Option4,
                                                                                                                groupValue: _q21answer,
                                                                                                                onChanged: (Q21Answer? value) {
                                                                                                                  setState(() {
                                                                                                                    _q21answer = value;
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
                                                                                                              leading: Radio<Q22Answer>(
                                                                                                                  value: Q22Answer.Ransomware,
                                                                                                                  groupValue: _q22answer,
                                                                                                                  onChanged: (Q22Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q22answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Ransomware.', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                            ListTile(
                                                                                                              leading: Radio<Q22Answer>(
                                                                                                                  value: Q22Answer.Threatware,
                                                                                                                  groupValue: _q22answer,
                                                                                                                  onChanged: (Q22Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q22answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Threatware', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                            ListTile(
                                                                                                              leading: Radio<Q22Answer>(
                                                                                                                  value: Q22Answer.Malware,
                                                                                                                  groupValue: _q22answer,
                                                                                                                  onChanged: (Q22Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q22answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              title: Text('Malware', style: new TextStyle(fontSize: 16)),
                                                                                                            ),
                                                                                                            ListTile(
                                                                                                              leading: Radio<Q22Answer>(
                                                                                                                  value: Q22Answer.Spyware,
                                                                                                                  groupValue: _q22answer,
                                                                                                                  onChanged: (Q22Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q22answer = value;
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
                                                                                                              Radio<Q23Answer>(
                                                                                                                  value: Q23Answer.StronglyDisagree,
                                                                                                                  groupValue: _q23answer,
                                                                                                                  onChanged: (Q23Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q23answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Strongly Disagree', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio<Q23Answer>(
                                                                                                                  value: Q23Answer.Disagree,
                                                                                                                  groupValue: _q23answer,
                                                                                                                  onChanged: (Q23Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q23answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Disagree', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio<Q23Answer>(
                                                                                                                  value: Q23Answer.Neutral,
                                                                                                                  groupValue: _q23answer,
                                                                                                                  onChanged: (Q23Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q23answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Neutral', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio<Q23Answer>(
                                                                                                                  value: Q23Answer.Agree,
                                                                                                                  groupValue: _q23answer,
                                                                                                                  onChanged: (Q23Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q23answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text('Agree', style: new TextStyle(fontSize: 16)),
                                                                                                              Radio<Q23Answer>(
                                                                                                                  value: Q23Answer.StronglyAgree,
                                                                                                                  groupValue: _q23answer,
                                                                                                                  onChanged: (Q23Answer? value) {
                                                                                                                    setState(() {
                                                                                                                      _q23answer = value;
                                                                                                                    });
                                                                                                                  }),
                                                                                                              Text(' Strongly Agree', style: new TextStyle(fontSize: 16)),
                                                                                                            ],
                                                                                                          ),
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
                                                                                                                  //adding name field to clound firestore.
                                                                                                                  FirebaseFirestore.instance.collection("Survey Answers").add({
                                                                                                                    'person_Name': _nameField.text,
                                                                                                                    'Q1': _q1answer.toString(),
                                                                                                                    'Q2': _q2answer.toString(),
                                                                                                                    //TODO Add only selected answers
                                                                                                                    'Q3': values.keys,
                                                                                                                    'Q4': _q4answer.toString(),
                                                                                                                    'Q5': _q5answer.toString(),
                                                                                                                    'Q6': _q6answer.toString(),
                                                                                                                    'Q7': _q7answer.toString(),
                                                                                                                    'Q8': _q8answer.toString(),
                                                                                                                    'Q9': _q9answer.toString(),
                                                                                                                    'Q10': _q10answer.toString(),
                                                                                                                    'Q11': _q11answer.toString(),
                                                                                                                    'Q12': _q12answer.toString(),
                                                                                                                    'Q13': _q13answer.toString(),
                                                                                                                    'Q14': _q14answer.toString(),
                                                                                                                    'Q15': _q15answer.toString(),
                                                                                                                    'Q16': _q16answer.toString(),
                                                                                                                    'Q17': _q17answer.toString(),
                                                                                                                    'Q18': _q18answer.toString(),
                                                                                                                    'Q19': _q19answer.toString(),
                                                                                                                    'Q20': _q20answer.toString(),
                                                                                                                    'Q21': _q21answer.toString(),
                                                                                                                    'Q22': _q22answer.toString(),
                                                                                                                    'Q23': _q23answer.toString(),
                                                                                                                  });

                                                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYou()));
                                                                                                                },

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
                                                                                          ])
                                                                                        ])
                                                                                      ])
                                                                                    ])
                                                                                  ])
                                                                                ])
                                                                              ])
                                                                        ])
                                                                  ])
                                                            ])
                                                      ])
                                                ])
                                          ])
                                    ])
                              ])
                        ]))))));
  }
}
