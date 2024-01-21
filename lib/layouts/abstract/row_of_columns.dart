import 'package:flutter/material.dart';

class RowOfColumns extends StatelessWidget {
  const RowOfColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              color: Colors.blueAccent,
            )
          ],
        ),
        Column(children: [
          Container(
            color: Colors.white,
          )
        ]),
        Column(children: [
          Container(
            color: Colors.red,
          )
        ])
      ],
    );
  }
}
