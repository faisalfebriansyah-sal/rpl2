import 'package:flutter/material.dart';
// import 'package:hello/container/Containersatu.dart';
// import 'package:hello/container/LatihanContainer.dart';
// import 'package:hello/row_column/ColumnWidget.dart';
// import 'package:hello/row_column/LatihanRowColumn.dart';
// import 'package:hello/row_column/RowColumnWidget.dart';
// import 'package:hello/row_column/RowWidget.dart';
// import 'package:hello/sized_expanded_stack/ExpandedWidget.dart';
// import 'package:hello/sized_expanded_stack/LatihanLayout.dart';
// import 'package:hello/sized_expanded_stack/LayoutDua.dart';
// import 'package:hello/sized_expanded_stack/LayoutEmpat.dart';
// import 'package:hello/sized_expanded_stack/Layoutsatu.dart';
// import 'package:hello/sized_expanded_stack/SizedBoxWidget.dart';
// import 'package:hello/sized_expanded_stack/StackWidget.dart';
// import 'package:rpl2/sized_expanded_stack/LayoutTiga.dart';
// import 'package:rpl2/list_grid_view/grid_basic_.dart';
// import 'package:rpl2/list_grid_view/grid_screen.dart';
import 'package:rpl2/list_grid_view/instragram.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Flutter App"),
        //   backgroundColor: const Color.fromARGB(255, 69, 67, 64),
        //   centerTitle: true,
        // ),
        body:const LayoutInstragram(),
      ),
    );
  }
}