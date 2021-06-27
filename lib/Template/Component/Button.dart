import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Typography.dart';

import '../Colors.dart';

class SolidButton extends StatelessWidget {
  final String? title;
  final double? border;
  final Color color;
  final Function() onPressed;
  const SolidButton({
    Key? key,
    this.border = 0,
    this.color = primary,
    this.title = "",
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          border!,
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            primary,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(border!),
          )),
        ),
        onPressed: onPressed,
        child: Text(
          title!,
          style: h6_light,
        ),
      ),
    );
  }
}
