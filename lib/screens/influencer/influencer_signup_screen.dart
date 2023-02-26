import 'package:flutter/material.dart';

import '../../Widgets/textInputField.dart';

class InfluencerSignupPage extends StatefulWidget {
  @override
  _InfluencerSignupPageState createState() => _InfluencerSignupPageState();
}

class _InfluencerSignupPageState extends State<InfluencerSignupPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              'https://us.123rf.com/450wm/asmati/asmati2005/asmati200500405/147126493-user-avatar-illustration-anonymous-sign-white-icon-with-gray-dropped-limitless-shadow-on-green-to-bl.jpg?ver=6'),
                          backgroundColor: Colors.grey[300],
                        ),
                        Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    TextInputField(
                      label: "FIRST NAME",
                      labelController: _firstNameController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextInputField(
                      label: "LAST NAME",
                      labelController: _lastNameController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextInputField(
                      label: "USER NAME",
                      labelController: _userNameController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextInputField(
                      label: "Email",
                      labelController: _emailController,
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 10.0),
                    TextInputField(
                      label: "PASSWORD",
                      labelController: _passwordController,
                      pass: true,
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
