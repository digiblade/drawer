import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';

class HomePage extends StatefulWidget {
  final Function(double, double) open;
  final double x;
  final double y;
  final double scale;
  final bool isOpen;
  final List<Widget> action;
  final Widget child;
  const HomePage({
    Key? key,
    this.x = 0,
    this.y = 0,
    this.scale = 0,
    this.isOpen = false,
    required this.open,
    this.action = const [],
    required this.child,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 8;
    double height = MediaQuery.of(context).size.height / 12;
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(widget.x, widget.y, 0)
        ..scale(widget.scale),
      decoration: BoxDecoration(
        color: light.withBlue(255).withGreen(245),
        borderRadius: BorderRadius.circular(widget.isOpen ? 16 : 0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        // constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: primary,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: dark.withOpacity(0.4),
                      blurRadius: 4,
                      offset: Offset.fromDirection(-4, 0)
                      // spreadRadius: 8,
                      )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.isOpen ? 16 : 0),
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: SizedBox(
                // height: 250,
                // height: height,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          widget.open(width, height * 12);
                        },
                        icon: ImageIcon(
                          Image.asset("assets/icons/menu.png").image,
                          color: light,
                        ),
                      ),
                      if (widget.action.length > 0)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: widget.action,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                // color: secondary,
                // height: height * 11,
                // constraints: BoxConstraints.expand(),
                child: SingleChildScrollView(
                  child: widget.child,
                ),
              ),
            )
            // LayoutBuilder(builder: (context, constraints) {
            //   return Container(
            //     // constraints: BoxConstraints.expand(),
            //     height: constraints.maxHeight,
            //     child: SingleChildScrollView(
            //       child: widget.child,
            //     ),
            //   );
            // })
          ],
        ),
      ),
    );
  }
}
