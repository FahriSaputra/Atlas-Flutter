import 'package:flutter/material.dart';

import 'package:dicoding_submission/screens/login/login_screen.dart';
import 'package:dicoding_submission/screens/sign_up/signup_screen.dart';
import 'package:dicoding_submission/widgets/background_image_with_gradient.dart';
import 'package:dicoding_submission/widgets/custom_flat_button.dart';
import 'package:dicoding_submission/widgets/line.dart';
import '../../global_colors.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: BackgroundImageWithGradient(
          image: AssetImage("assets/img-56.png"),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: GlobalColors().white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Image.asset(
                            "assets/logo/logo.png",
                            height: 65,
                            width: 65,
                          ),
                        ),
                      ),
                      Text(
                        "A T L A S",
                        style: TextStyle(
                          fontSize: 20,
                          color: GlobalColors().white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        "assets/quote.png",
                        width: size.width * 0.6,
                      ),
                      Container(
                        height: 5,
                        width: 30,
                        color: GlobalColors().white,
                        margin: EdgeInsets.only(top: 10),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Column(
                      children: [
                        CustomFlatButton(
                          title: "Login",
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                          },
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.33,
                                child: Line(),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "OR",
                                  style: TextStyle(
                                    color: GlobalColors().white,
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width * 0.33,
                                child: Line(),
                              ),
                            ],
                          ),
                        ),
                        CustomFlatButton(
                          title: "Create an account",
                          color: Colors.transparent,
                          textColor: GlobalColors().white,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return SignUp();
                              },
                            ));
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
