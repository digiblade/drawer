import 'package:flutter/material.dart';

import '../Colors.dart';
import '../Typography.dart';

class CustomDropdown extends StatelessWidget {
  final Function(String) onChange;
  final String value;
  final List<String> data;
  final String tag;
  const CustomDropdown({
    Key? key,
    required this.onChange,
    this.value = "",
    this.data = const [],
    this.tag = "",
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
        DropdownButtonHideUnderline(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // color: dark,
              border: Border.all(
                color: primary,
                width: 0.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                onChanged: (val) {
                  onChange(val.toString());
                },
                value: value,
                items: data.map(
                  (e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
