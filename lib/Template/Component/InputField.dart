import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';

import '../Typography.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const InputField({
    Key? key,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
          borderSide: BorderSide(
            color: primary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
          borderSide: BorderSide(
            color: primary,
          ),
        ),
      ),
    );
  }
}

class TagField extends StatelessWidget {
  final String tag;
  final TextEditingController? controller;
  const TagField({
    Key? key,
    this.tag = "",
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tag,
          style: h5,
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: primary,
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: primary,
                width: 0.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
