import 'package:flutter/material.dart';

class GridViewBasic extends StatelessWidget {
  const GridViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('GridView.count')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: (widthScreen / heightScreen) * 1.5, 
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 2, 2),
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 165, 0),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 53, 238, 1),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 0, 114, 236),
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}