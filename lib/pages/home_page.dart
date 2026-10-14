import 'package:flutter/material.dart';
// import 'package:rpl2/container_widget/TwitterProfilePage.dart';
// import 'package:rpl2/list_grid_view/instragram.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Halaman Home'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Text('Pergi ke Halaman About'),
          ),

          Text('Halaman Tweet'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/twitterProfile');
            },
            child: Text('Pergi ke Halaman Tweet'),
          ),

          Text('Halaman Instagram'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/instagram');
            },
            child: Text('Pergi ke Halaman Instagram'),
          ),
          Text('Halaman Formulir'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/formulir');
            },
            child: Text('Pergi ke Halaman Formulir'),
          ),
        ]
      ),
    );
  }
}