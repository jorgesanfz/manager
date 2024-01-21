import 'package:flutter/material.dart';

class ColumnOfRows extends StatelessWidget {
  const ColumnOfRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blueAccent,
                child: const Text("Prueba"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.white,
              child: const Text("Prueba"),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.red,
              child: const Text("Prueba"),
            ),
          ],
        ),
      ],
    );
  }
}
