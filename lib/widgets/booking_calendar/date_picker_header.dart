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
    return Container(
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              //
            },
            child: Text('<'),
          ),
          Text("Date"),
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
