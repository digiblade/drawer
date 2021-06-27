import 'package:flutter/material.dart';
import 'package:tasktracker/App/HomePage.dart';
import 'package:tasktracker/Pages/Drawer.dart';
import 'package:tasktracker/Pages/FrontPage.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Component/InputField.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

class ChildRegistration extends StatefulWidget {
  ChildRegistration({Key? key}) : super(key: key);

  @override
  _ChildRegistrationState createState() => _ChildRegistrationState();
}

class _ChildRegistrationState extends State<ChildRegistration> {
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
          ListTile(
            title: Text(
              "रिपोर्ट देखें",
              style: h5_light,
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
              "बच्चों का पंजीयन करे",
              style: h1,
            ),
            verticalSpace(32),
            TagField(
              tag: "राज्य",
            ),
            verticalSpace(16),
            TagField(
              tag: "जिला",
            ),
            verticalSpace(16),
            TagField(
              tag: "परियोजना",
            ),
            verticalSpace(16),
            TagField(
              tag: "सेक्टर",
            ),
            verticalSpace(16),
            TagField(
              tag: "आंगनबाड़ी",
            ),
            verticalSpace(16),
            TagField(
              tag: "बच्चे का कोड",
            ),
            verticalSpace(16),
            TagField(
              tag: "बच्चे का फोटो",
            ),
            verticalSpace(16),
            TagField(
              tag: "बच्चे का नाम",
            ),
            verticalSpace(16),
            TagField(
              tag: "पिता का नाम",
            ),
            verticalSpace(16),
            TagField(
              tag: "माता का नाम",
            ),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
