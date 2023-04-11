import 'package:delivery_application/features/home_pages/on_boarding_pages/delivery.dart';
import 'package:delivery_application/features/home_pages/on_boarding_pages/wellcome.dart';
import 'package:delivery_application/features/home_pages/on_boarding_pages/widgets/dots.dart';
import 'package:flutter/material.dart';
import 'on_boarding_pages/about.dart';
import 'on_boarding_pages/login_page.dart';
import 'on_boarding_pages/widgets/navigation_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageViewController = PageController();
  int _selectedPage = 0;

  final List<Widget> _pages = [
    const OBWellcome(),
    const OBAbout(),
    const OBDelivery(),
    const LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageViewController,
            children: _pages,
            onPageChanged: (value) {
              setState(() {
                _selectedPage = value;
              });
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OBDots(totalPages: _pages.length, selectedPage: _selectedPage),
              OBNavigationButtons(
                pageController: _pageViewController,
                selectedPage: _selectedPage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
