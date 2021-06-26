import 'package:flutter/material.dart';
import 'package:tasktracker/Pages/Drawer.dart';
import 'package:tasktracker/Pages/IconCard.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

import 'Pages/FrontPage.dart';

import 'Template/Colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      theme: ThemeData(
        primaryColor: primary,
        fontFamily: primaryfont,
      ),
      home: FrontPage(
        drawer: SideDrawer(),
        action: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              Image.asset("assets/icons/search.png").image,
              color: light,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              Image.asset("assets/icons/user.png").image,
              color: light,
            ),
          ),
          PopupMenuButton(
            color: light,
            icon: Icon(
              Icons.more_vert,
              color: light,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "Logout",
                ),
              )
            ],
          ),
        ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(16),
            Text(
              "Category".toUpperCase(),
              style: h3,
            ),
            verticalSpace(16),
            GridView.count(
              crossAxisCount: 3,
              primary: false,
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                IconCard(),
                IconCard(),
                IconCard(),
                IconCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
