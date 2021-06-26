import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';

import 'HomePage.dart';

class FrontPage extends StatefulWidget {
  final Widget drawer;
  final Widget body;
  final List<Widget> action;
  FrontPage({
    Key? key,
    required this.drawer,
    required this.body,
    this.action = const [],
  }) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  drawerClose() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  drawerOpen(width, height) {
    setState(() {
      xOffset = width * 6;
      yOffset = height / 6;
      scaleFactor = 0.6;
      isDrawerOpen = true;
    });
  }

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: darkpurple,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  drawerClose();
                },
                icon: Icon(
                  Icons.highlight_off,
                  color: light,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
              child: widget.drawer,
            ),
            HomePage(
              isOpen: isDrawerOpen,
              open: drawerOpen,
              x: xOffset,
              y: yOffset,
              scale: scaleFactor,
              action: widget.action,
              child: widget.body,
            ),
          ],
        ),
      ),
    );
  }
}
