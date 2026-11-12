import 'package:flutter/material.dart';
// import 'package:rpl2/container_widget/TwitterProfilePage.dart';
// import 'package:rpl2/list_grid_view/instragram.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Dashboard')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // TOMBOL MENU BIOSKOP BARU
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE52C32),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                icon: const Icon(Icons.movie, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/cinema');
                },
                label: const Text(
                  'Buka UI Tiket Bioskop',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 10),

              const Text('Halaman About'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: const Text('Pergi ke Halaman About'),
              ),
              const SizedBox(height: 10),

              const Text('Halaman Tweet'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/twitterProfile');
                },
                child: const Text('Pergi ke Halaman Tweet'),
              ),
              const SizedBox(height: 10),

              const Text('Halaman Instagram'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/instagram');
                },
                child: const Text('Pergi ke Halaman Instagram'),
              ),
              const SizedBox(height: 10),

              const Text('Halaman Formulir'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/formulir');
                },
                child: const Text('Pergi ke Halaman Formulir'),
              ),
              const SizedBox(height: 10),
              const Text('Halaman Input'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/input');
                },
                child: const Text('Pergi ke Halaman Input'),
              ),
              const SizedBox(height: 10),
              const Text('Halaman Album'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/album');
                },
                child: const Text('Pergi ke Halaman Album'),
              ),
              const SizedBox(height: 10),
              const Text('Halaman Post'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/post');
                },
                child: const Text('Pergi ke Halaman Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}