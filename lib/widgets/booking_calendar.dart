import 'package:flutter/cupertino.dart';
import 'booking_calendar/day_view.dart';
import 'booking_calendar/date_picker.dart';

class BookingCalendar extends StatelessWidget {
  const BookingCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: DatePicker()),
        Expanded(flex: 4, child: DayView()),
      ],
      /*Expanded(
          child: Container(
        color: CupertinoColors.black,
      ))
    ]*/
    );
  }
}
