import 'package:flutter/material.dart';
import 'package:tasktracker/App/HomePage.dart';
import 'package:tasktracker/Models/AuthModel.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Component/Button.dart';
import 'package:tasktracker/Template/Component/InputField.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();
  bool flag = true;
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
                      InputField(
                        hintText: "username",
                        controller: user,
                      ),
                      verticalSpace(16),
                      InputField(
                        hintText: "password",
                        controller: pass,
                      ),
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
                      if (flag)
                        SolidButton(
                          onPressed: () async {
                            setState(() {
                              flag = false;
                            });
                            if ((await getAuth(user.text, pass.text)).length >
                                0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Home(),
                                ),
                              );
                            } else {
                              Fluttertoast.showToast(
                                  msg: "invalid credentials");
                            }
                            setState(() {
                              flag = true;
                            });
                          },
                          border: 32,
                          color: primary,
                          title: "Log in",
                        )
                      else
                        Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(primary),
                          ),
                        )
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
