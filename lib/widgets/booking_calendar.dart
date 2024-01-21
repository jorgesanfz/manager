import 'package:flutter/cupertino.dart';
import 'booking_calendar/day_view.dart';
import 'booking_calendar/date_picker.dart';

class BookingCalendar extends StatelessWidget {
  const BookingCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [DatePicker(), DayView()],
      /*Expanded(
          child: Container(
        color: CupertinoColors.black,
      ))
    ]*/
        );
  }
}
