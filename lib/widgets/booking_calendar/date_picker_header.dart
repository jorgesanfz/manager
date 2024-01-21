import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerHeader extends StatefulWidget {
  final String mode;

  DatePickerHeader({required this.mode});

  @override
  State<DatePickerHeader> createState() => _DatePickerHeaderState();
}

class _DatePickerHeaderState extends State<DatePickerHeader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              //
            },
            child: Text('<'),
          ),
          Text("Week"),
          TextButton(
            onPressed: () {
              //
            },
            child: Text('>'),
          ),
        ],
      ),
    );
  }
}
