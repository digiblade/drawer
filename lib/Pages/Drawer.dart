import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Space.dart';

class SideDrawer extends StatefulWidget {
  final List<Widget> drawerList;
  SideDrawer({
    Key? key,
    this.drawerList = const [],
  }) : super(key: key);

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
              backgroundImage: Image.asset(
                "assets/image/Logo/cglogo.png",
              ).image,
            ),
          ],
        ),
        verticalSpace(64),
        Column(
          children: widget.drawerList,
        ),
      ],
    );
  }
}
