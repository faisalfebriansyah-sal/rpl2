import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 100,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Column(
              children: [
                Text("Hello"),
                Text("World"),
                Text("Flutter"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}