import 'package:flutter/material.dart';

import 'package:dicoding_submission/screens/login/login_screen.dart';
import 'package:dicoding_submission/screens/splash/splash_screen.dart';
import 'package:dicoding_submission/widgets/background_image_with_gradient.dart';
import 'package:dicoding_submission/widgets/gradient_button.dart';
import 'package:dicoding_submission/widgets/text_field.dart';

import '../../global_colors.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool lightOn = false;
  String _username, _password, _emailAddress;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: BackgroundImageWithGradient(
          image: AssetImage("assets/img-54.png"),
          child: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: GlobalColors().white,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return SplashScreen();
                            }));
                          },
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: GlobalColors().white, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(""),
                        flex: 1,
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(color: GlobalColors().white),
                    child: Container(
                      margin: EdgeInsets.all(40),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Join us",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                            TextInput(
                              hintText: "Username",
                              onChanged: (String newValue) {
                                setState(() {
                                  _username = newValue;
                                });
                              },
                            ),
                            TextInput(
                              obscureText: true,
                              hintText: "Password",
                              onChanged: (String newValue) {
                                setState(() {
                                  _password = newValue;
                                });
                              },
                            ),
                            TextInput(
                              obscureText: true,
                              hintText: "Repeat password",
                              onChanged: (String newValue) {
                                setState(() {});
                              },
                            ),
                            TextInput(
                              hintText: "Email Address",
                              onChanged: (String newValue) {
                                setState(() {
                                  _emailAddress = newValue;
                                });
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Checkbox(
                                    activeColor:
                                        Color.fromRGBO(244, 50, 127, 1),
                                    value: lightOn,
                                    onChanged: (bool value) {
                                      setState(() {
                                        lightOn = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Agree to our ",
                                    style: TextStyle(
                                      color:
                                          GlobalColors().dark.withOpacity(0.5),
                                    ),
                                  ),
                                  InkWell(
                                    child: Text(
                                      "Terms & Stuff",
                                      style:
                                          TextStyle(color: GlobalColors().dark),
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                            GradientButton(title: "Sign up", onTap: () {})
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.8,
                          color: GlobalColors().white.withOpacity(0.5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already a member ? ",
                                style: TextStyle(
                                    color:
                                        GlobalColors().white.withOpacity(0.5)),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Login();
                                  }));
                                },
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                    color: GlobalColors().white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
