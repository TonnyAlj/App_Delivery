import 'package:flutter/material.dart';

class OBBackground extends StatelessWidget {
  final ImageProvider imageProvider;
  final String topText;
  final String botomText;

  const OBBackground({
    super.key,
    required this.imageProvider,
    required this.topText,
    required this.botomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(252, 233, 205, 1),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: imageProvider,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
              left: 8,
              right: 8,
            ),
            child: Text(
                  topText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            Padding(
            padding: const EdgeInsets.only(
              top: 450,
              left: 8,
              right: 8,
            ),
            child: Text(
                  botomText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
        ],
      ),
    );
  }
}
