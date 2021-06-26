import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

class SideDrawer extends StatefulWidget {
  SideDrawer({Key? key}) : super(key: key);

  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: success,
              radius: 32,
              backgroundImage: Image.asset("assets/image/ak.jpg").image,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: light,
              ),
            ),
          ],
        ),
        verticalSpace(64),
        ListTile(
          title: Text(
            "Home",
            style: h5_light,
          ),
        ),
        ListTile(
          title: Text(
            "About",
            style: h5_light,
          ),
        ),
        ListTile(
          title: Text(
            "Product",
            style: h5_light,
          ),
        ),
        ListTile(
          title: Text(
            "Orders",
            style: h5_light,
          ),
        ),
        ListTile(
          title: Text(
            "Contactus",
            style: h5_light,
          ),
        ),
      ],
    );
  }
}
