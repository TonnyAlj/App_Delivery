import 'package:flutter/material.dart';

class OBDots extends StatelessWidget {
  final int totalPages;
  final int selectedPage;
  const OBDots(
      {super.key, required this.totalPages, required this.selectedPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          margin: const EdgeInsets.only(left: 4.0),
          width: selectedPage == index ? 20 : 10,
          height: selectedPage == index ? 12 : 6,
          duration: const Duration(microseconds: 200),
          decoration: BoxDecoration(
              color: Colors.deepOrange, borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
