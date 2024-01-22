import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manager/services/console_provider.dart';
import 'package:manager/widgets/meet/form.dart';

class DayView extends ConsumerWidget {
  const DayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> workers = ["Eva", "Laura", "Irene"];
    List<String> dayHours = [
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

    return Container(
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      width: MediaQuery
          .of(context)
          .size
          .width / 1.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int i = 0; i < workers.length; i++)
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120,
                    margin: EdgeInsets.only(bottom: 25, top: 25),
                    child: Center(child: Text(workers[i])),
                  ),
                  const VerticalDivider(color: Colors.grey, thickness: 1),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int j = 0; j < dayHours.length; j++)
                            HourButton(dayHours: dayHours, index: j, contextParent: context,),
                        ],
                      ),
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

class HourButton extends ConsumerWidget {
  final List<String> dayHours;
  final int index;
  final BuildContext contextParent;

  const HourButton({required this.dayHours, required this.index, required this.contextParent});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: index % 2 == 0 ? Colors.green : Colors.red),
          borderRadius: index == 0
              ? const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20))
              : index == dayHours.length - 1
              ? const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20))
              : null,
        ),
        height: 30,
        margin: EdgeInsets.all(1),
        child: Center(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blueGrey,
            ),
            child: Text(dayHours[index]),
            onPressed: () {
              // You can create an object to hold the form data
              _showDialog(context);
              // Close the modal and pass the appointment data back to the caller
              // Navigator.of(context).pop();

              // You can also add a message to the console provider
              ref.read(consoleProvider).addMessage('Appointment scheduled: ');
            },

          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
        return Container(
         padding: EdgeInsets.all(50), 
            child: Dialog(
          child: HairSalonAppointmentForm(),),
      );
    },
  );
}