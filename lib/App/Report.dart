import 'package:flutter/material.dart';
import 'package:tasktracker/App/HomePage.dart';
import 'package:tasktracker/Models/RegistrationModel.dart';
import 'package:tasktracker/Pages/Drawer.dart';
import 'package:tasktracker/Pages/FrontPage.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

import 'ChildRegistration.dart';

class Report extends StatefulWidget {
  Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return FrontPage(
      drawer: SideDrawer(
        drawerList: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Home(),
                ),
              );
            },
            child: ListTile(
              title: Text(
                "डैशबोर्ड",
                style: h5_light,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "प्रोजेक्ट सूचि ",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "सेक्टर सूचि ",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "आंगनवाड़ी सूचि ",
              style: h5_light,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Report(),
                ),
              );
            },
            child: ListTile(
              title: Text(
                "रिपोर्ट देखें",
                style: h5_light,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ChildRegistration(),
                ),
              );
            },
            child: ListTile(
              title: Text(
                "बच्चों का पंजीयन करे",
                style: h5_light,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "पासवर्ड बदलें ",
              style: h5_light,
            ),
          ),
        ],
      ),
      action: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 32,
            color: light,
          ),
        ),
      ],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(32),
            Text(
              "बच्चों का डेटा",
              style: h1,
            ),
            verticalSpace(32),
            FutureBuilder(
                future: getData(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data == 0) {
                      return Center(
                        child: Text("No data found"),
                      );
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: snapshot.data.map<Widget>(
                        (e) {
                          return Card(
                            child: ListTile(
                              title: Text(e['name']),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("district: " +
                                      e['district'] +
                                      " " +
                                      e['state']),
                                  Text("परियोजना: " + e['pariyojna']),
                                  Text("सेक्टर: " + e['sector']),
                                ],
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
