import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget{
  const ColumnWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('ini isi column 1'),
        Text('ini isi column 2'),
        Text('ini isi column 3'),
        FlutterLogo(
          size: 50,
          textColor: Colors.blue,
        )
      ],
      );
  }
}
