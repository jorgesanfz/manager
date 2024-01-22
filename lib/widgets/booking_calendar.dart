import 'package:flutter/material.dart';
import 'booking_calendar/day_view.dart';
import 'booking_calendar/date_picker.dart';

class BookingCalendar extends StatelessWidget {
  const BookingCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget profile = Expanded(
        child: Container(
      //color: Colors.red,
      child: Icon(Icons.person_rounded, size: 150),
    ));
    Widget info = Expanded(
      child: Center(
        child: Container(
          color: Colors.blueGrey,
          height: 160,
          width: 200,
          child: Center(
            child: ListView(padding: EdgeInsets.symmetric(horizontal: 100),
              children: [
                Text("1"),
                Text("2"),
                Text("2"),
                Text("2"),
                Text("2"),
                Text("2"),
              ],
            ),
          ),
        ),
      ),
    );

    return Column(
      children: [
        //Expanded(flex: 1, child: DatePicker()),
        //Expanded(flex: 2, child: DayView()),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [info, DatePicker(), profile]),
        DayView(), //expanded
      ],
      /*Expanded(
          child: Container(
        color: CupertinoColors.black,
      ))
    ]*/
    );
  }
}
