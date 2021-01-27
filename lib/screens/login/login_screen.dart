import 'package:flutter/material.dart';

import 'package:dicoding_submission/screens/main_screen.dart';
import 'package:dicoding_submission/screens/sign_up/signup_screen.dart';
import 'package:dicoding_submission/screens/splash/splash_screen.dart';
import 'package:dicoding_submission/widgets/gradient_button.dart';
import 'package:dicoding_submission/widgets/background_image_with_gradient.dart';
import 'package:dicoding_submission/widgets/text_field.dart';

import '../../global_colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool lightOn = false;
  String _username, _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundImageWithGradient(
          image: AssetImage("assets/img-55.png"),
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
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                            TextInput(
                              onChanged: (String newValue) {
                                setState(() {
                                  _username = newValue;
                                });
                              },
                              hintText: "Username",
                            ),
                            TextInput(
                              onChanged: (String newValue) {
                                setState(() {
                                  _password = newValue;
                                });
                              },
                              hintText: "Password",
                              obscureText: true,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Keep me logged in"),
                                  Switch(
                                    activeTrackColor:
                                        Color.fromRGBO(244, 50, 127, 1),
                                    activeColor: GlobalColors().white,
                                    // active,
                                    value: lightOn,
                                    onChanged: (bool value) {
                                      setState(() {
                                        lightOn = value;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                            GradientButton(
                              title: "Login",
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MainScreen();
                                }));
                              },
                            ),
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
                                "Not a user ? ",
                                style: TextStyle(
                                  color: GlobalColors().white.withOpacity(0.5),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignUp();
                                  }));
                                },
                                child: Text(
                                  "Sign up",
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
