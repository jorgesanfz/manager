import 'package:flutter/material.dart';
import 'package:manager/widgets/booking_calendar.dart';

class Meets extends StatefulWidget {
  final Function(String) onNavigate;

  Meets({required this.onNavigate});

  @override
  State<Meets> createState() => _MeetsState();
}

class _MeetsState extends State<Meets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(10),
      child: BookingCalendar(),
    );
  }
}

/*class _MeetsState extends State<Meets> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Fecha"),
              color: Colors.blueAccent,
            )
          ],
        ),
        Row(children: [Row()])
      ],
    );
  }
}*/
