import 'package:flutter/material.dart';

class DayView extends StatefulWidget {
  @override
  State<DayView> createState() => _DayViewState();
}

class _DayViewState extends State<DayView> {
  List workers = ["Eva", "Laura", "Irene"];
  List dayHours = [
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18"
  ];

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        // Allow the column to take minimum vertical space
        children: [
          for (int i = 0; i < workers.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(workers[i]),
                  color: Colors.amber,
                ),
                for (int i = 0; i < dayHours.length; i++)
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: i % 2 == 0 ? Colors.red : Colors.blue,
                      child: Center(
                          child: TextButton(
                        child: Text(dayHours[i]),
                        onPressed: () {
                          print(i);
                        },
                      )),
                    ),
                  ),
              ],
            )
        ],
      ),
    );
  }
}
