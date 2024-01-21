import 'package:flutter/cupertino.dart';
import 'package:manager/widgets/booking_calendar/date_picker_body.dart';
import 'package:manager/widgets/booking_calendar/date_picker_header.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  /*final String mode;
  DatePicker({required this.mode});*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePickerHeader(mode: 'day'),
        DatePickerBody(mode: 'day'),
      ],
    );
  }
}
