import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/about_page.dart';
import '../container_widget/TwitterProfilePage.dart';
import '../list_grid_view/instragram.dart';
import '../pages/formulir_page.dart';
import '../pages/input_page.dart';
import '../pages/cinema_page.dart';
import '../pages/album_page.dart';
import '../pages/post_page.dart';

class AppRoutes {
  static const home = '/';
  static const about = '/about';
  static const twitterProfilePage = '/twitterProfile';
  static const instagram = '/instagram';
  static const formulir = '/formulir';
  static const input = '/input';
  static const cinema = '/cinema';
  static const album = '/album';
  static const post = '/post';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    about: (context) => const AboutPage(),
    twitterProfilePage: (context) => const TwitterProfileScreen(),
    instagram: (context) => const LayoutInstragram(),
    formulir: (context) => const FormulirPage(),
    input: (context) => const BelajarForm(), // <-- Sudah diperbaiki dari 'innut'
    cinema: (context) => const MainHomeScreen(),
    album: (context) => const AlbumPage(), // <-- Ditambahkan ke map routes
    post: (context) => const PostPage(), // <-- Ditambahkan ke map routes
  };
}