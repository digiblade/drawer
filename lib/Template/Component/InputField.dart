import 'package:flutter/material.dart';
import 'package:tasktracker/Template/Colors.dart';

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
