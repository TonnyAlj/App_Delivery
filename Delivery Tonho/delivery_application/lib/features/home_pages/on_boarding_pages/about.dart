import 'package:delivery_application/features/home_pages/on_boarding_pages/widgets/background.dart';
import 'package:flutter/material.dart';

class OBAbout extends StatelessWidget {
  const OBAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OBBackground(
      topText: 'Fome D+ Delivery',
      imageProvider: AssetImage(
        'assets/images/tela04.jpg',
      ),
      botomText:
          'Entregas rapidas, para manter o sabor e o calor agradavel da comida, tudo em um piscar de olhos',
    );
  }
}
