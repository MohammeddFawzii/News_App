import 'package:flutter/material.dart';
import 'package:news_cloude_app/featues/home/Views/category_view.dart';
import 'package:news_cloude_app/featues/home/Views/home_view..dart';
import 'package:news_cloude_app/featues/splash/views/splash_view.dart';

void main() {
  runApp(const NewsCloudeApp());
}

class NewsCloudeApp extends StatelessWidget {
  const NewsCloudeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
        CategoryView.id: (context) => const CategoryView(),

      },
      initialRoute: SplashView.id,
    );
  }
}
