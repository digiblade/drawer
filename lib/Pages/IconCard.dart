import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_today,
              size: 64,
              color: success,
            ),
            Text(
              "Calender",
              style: TextStyle(
                color: dark.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
