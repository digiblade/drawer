import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tasktracker/App/HomePage.dart';
import 'package:tasktracker/Models/RegistrationModel.dart';
import 'package:tasktracker/Pages/Drawer.dart';
import 'package:tasktracker/Pages/FrontPage.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Component/Button.dart';
import 'package:tasktracker/Template/Component/CustomDropdown.dart';
import 'package:tasktracker/Template/Component/InputField.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

import 'Report.dart';

class ChildRegistration extends StatefulWidget {
  ChildRegistration({Key? key}) : super(key: key);

  @override
  _ChildRegistrationState createState() => _ChildRegistrationState();
}

class _ChildRegistrationState extends State<ChildRegistration> {
  String gender = "पुरुष";
  String cast = "सामान्य";
  String group = "स्वसहायता समूह";
  List<String> data = ["पुरुष", "महिला"];
  final TextEditingController state = TextEditingController();
  final TextEditingController district = TextEditingController();
  final TextEditingController pariyojna = TextEditingController();
  final TextEditingController sector = TextEditingController();
  final TextEditingController anganbadi = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController father = TextEditingController();
  final TextEditingController mother = TextEditingController();
  final TextEditingController dob = TextEditingController();
  final TextEditingController rdate = TextEditingController();
  final TextEditingController bname = TextEditingController();
  final TextEditingController bnumber = TextEditingController();
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
              "बच्चों का पंजीयन करे",
              style: h1,
            ),
            verticalSpace(32),
            TagField(
              tag: "राज्य",
              controller: state,
            ),
            verticalSpace(16),
            TagField(
              tag: "जिला",
              controller: district,
            ),
            verticalSpace(16),
            TagField(
              tag: "परियोजना",
              controller: pariyojna,
            ),
            verticalSpace(16),
            TagField(
              tag: "सेक्टर",
              controller: sector,
            ),
            verticalSpace(16),
            TagField(
              tag: "आंगनबाड़ी",
              controller: anganbadi,
            ),
            verticalSpace(16),
            // TagField(
            //   tag: "बच्चे का कोड",
            // ),
            // verticalSpace(16),
            // TagField(
            //   tag: "बच्चे का फोटो",
            // ),
            // verticalSpace(16),
            TagField(
              tag: "बच्चे का नाम",
              controller: name,
            ),
            verticalSpace(16),
            TagField(
              tag: "पिता का नाम",
              controller: father,
            ),
            verticalSpace(16),
            TagField(
              tag: "माता का नाम",
              controller: mother,
            ),
            verticalSpace(16),
            CustomDropdown(
              tag: "लिंग",
              value: gender,
              data: data,
              onChange: (String? val) {
                setState(() {
                  gender = val!;
                });
              },
            ),
            verticalSpace(16),
            TagField(
              tag: "जन्म की तारीख",
              controller: dob,
            ),
            verticalSpace(16),
            CustomDropdown(
              tag: "संवर्ग",
              value: cast,
              data: [
                'सामान्य',
                'अन्य पिछड़ा वर्ग',
                'अनुसूचित जाति',
                'अनुसूचित जनजाति',
              ],
              onChange: (String? val) {},
            ),
            verticalSpace(16),
            TagField(
              tag: "पंजीकरण की तारीख",
              controller: rdate,
            ),
            verticalSpace(16),
            CustomDropdown(
              tag: "बच्चे को गोद लेने वाले समूह का प्रकार",
              value: group,
              data: [
                'स्वसहायता समूह',
                'परियोजना अधिकारी',
                'पर्यवेक्षक',
                'अन्य',
              ],
              onChange: (String? val) {},
            ),
            verticalSpace(16),
            TagField(
              tag: "बच्चे को गोद लेने वाले का नाम",
              controller: bname,
            ),
            verticalSpace(16),
            TagField(
              tag: "बच्चे को गोद लेने वाले का मोबाइल नंबर",
              controller: bnumber,
            ),
            verticalSpace(16),
            if (flag)
              SolidButton(
                onPressed: () async {
                  setState(() {
                    flag = false;
                  });
                  if (await register(
                    state: state.text,
                    district: district.text,
                    pariyojna: pariyojna.text,
                    sector: sector.text,
                    anganbadi: anganbadi.text,
                    name: name.text,
                    father: father.text,
                    mother: mother.text,
                    gender: gender,
                    dob: dob.text,
                    cast: cast,
                    registrationdate: rdate.text,
                    group: group,
                    bname: bname.text,
                    bnumber: bnumber.text,
                  )) {
                    Fluttertoast.showToast(msg: "Registration success");
                  } else {
                    Fluttertoast.showToast(msg: "Something went wrong");
                  }
                  setState(() {
                    flag = true;
                  });
                },
                title: "Register",
              )
            else
              Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(primary),
                ),
              ),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
