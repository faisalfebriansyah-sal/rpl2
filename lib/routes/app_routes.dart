
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/about_page.dart';
import '../container_widget/TwitterProfilePage.dart';
import '../list_grid_view/instragram.dart';
import '../pages/formulir_page.dart';

class AppRoutes {
  static const home = '/';
  static const about = '/about';
  static const TwitterProfilePage = '/twitterProfile';
  static const instagram = '/instagram';
  static const formulir = '/formulir';

  static Map<String, WidgetBuilder> routes = {
  home: (context) => const HomePage(),
  about: (context) => const AboutPage(),
  TwitterProfilePage: (context) => const TwitterProfileScreen(),
  instagram: (context) => const LayoutInstragram(),
  formulir: (context) => const FormulirPage(),
};
}