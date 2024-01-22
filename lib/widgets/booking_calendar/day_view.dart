import 'package:flutter/material.dart';
import 'package:manager/widgets/hours_bar.dart';

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
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          //color: Colors.blueGrey,
          border: Border(top: BorderSide(color: Colors.grey, width: 1))),
      width: MediaQuery.of(context).size.width / 1.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        // Allow the column to take minimum vertical space
        children: [
          for (int i = 0; i < workers.length; i++)
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                    width: 120,
                    margin: EdgeInsets.only(bottom: 25, top: 25),
                    child: Center(child: Text(workers[i])),
                    //color: Colors.amber,
                  ),
                  //const VerticalDivider(color: Colors.grey, thickness: 1),
                  for (int i = 0; i < dayHours.length; i++)
                    Expanded(
                      //flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: i % 2 == 0 ? Colors.blue : Colors.white,
                          //border: Border.all(color: Colors.black),
                          borderRadius: i == 0
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))
                              : i == dayHours.length - 1
                                  ? const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))
                                  : null,
                        ),
                        height: 30,
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
              ),
            ),
        ],
      ),
    );
  }
}
