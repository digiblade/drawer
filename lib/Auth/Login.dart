import 'package:flutter/material.dart';
import 'package:tasktracker/App/HomePage.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Component/Button.dart';
import 'package:tasktracker/Template/Component/InputField.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 8;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: primary,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: height,
              ),
              child: CircleAvatar(
                radius: 32,
                backgroundImage:
                    Image.asset("assets/image/Logo/cglogo.png").image,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 2),
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: light,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      verticalSpace(32),
                      Text(
                        "सुपोषित कोरबा",
                        style: h3,
                      ),
                      Text(
                        "Sign in to continue",
                        style: p,
                      ),
                      verticalSpace(32),
                      InputField(),
                      verticalSpace(16),
                      InputField(),
                      verticalSpace(8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(16),
                      SolidButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Home(),
                            ),
                          );
                        },
                        border: 32,
                        color: primary,
                        title: "Log in",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
