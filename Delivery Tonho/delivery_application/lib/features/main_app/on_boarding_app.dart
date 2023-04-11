import 'package:delivery_application/controllers/app_controller.dart';
import 'package:delivery_application/features/home_pages/home_screen.dart';
import 'package:delivery_application/features/home_pages/on_boarding_pages/acount.dart';
import 'package:delivery_application/features/home_pages/on_boarding_pages/login_page.dart';
import 'package:flutter/material.dart';
import '../home_pages/home.dart';

class OnBoardingApp extends StatelessWidget {
  const OnBoardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'On Boarding App',
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/home': (context) => const HomeScreean(),
            '/login' : (context) => const LoginPage(),
            '/acount' : (context) => const AcountPage(),
          },
          //home: const HomePage(),
        );
      },
    );
  }
}
