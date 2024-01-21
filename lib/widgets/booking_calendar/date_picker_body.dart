import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerBody extends StatefulWidget {
  final String mode;

  DatePickerBody({super.key, required this.mode});

  @override
  State<DatePickerBody> createState() => _DatePickerBodyState();
}

class _DatePickerBodyState extends State<DatePickerBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 7,
                children: List.generate(
                  7,
                      (index) {
                    return Center(
                      child: Container(
                        constraints: const BoxConstraints.expand(),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$index',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
