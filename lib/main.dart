import 'package:flutter/material.dart';
// import 'package:rpl2/container_widget/LatihanContainer.dart';
// import 'package:rpl2/row_column_widget/RowWidget.dart';
// import 'package:rpl2/row_column_widget/ColumnWidget.dart';
// import 'package:rpl2/container_widget/Biodata.dart';
// import 'package:rpl2/container_widget/ContainerSatu.dart';
// import 'package:rpl2/container_widget/Latihan.dart';
// import 'package:rpl2/expanded_widget/ExpandedWidget.dart';
// import 'package:rpl2/expanded_widget/StackWidget.dart';
// import 'package:rpl2/container_widget/TwitterProfilePage.dart';
import 'package:rpl2/sized_expanded_stack/LayoutSatu.dart';
import 'package:rpl2/sized_expanded_stack/LayoutDua.dart';
import 'package:rpl2/sized_expanded_stack/LayoutTiga.dart';
import 'package:rpl2/sized_expanded_stack/LatihanLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Pertamaku",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RPL 2"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: LatihanLayout(),
        // bottomNavigationBar: const LabelKelas(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.yellowAccent,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}