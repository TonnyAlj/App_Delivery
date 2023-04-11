import 'package:delivery_application/features/home_pages/on_boarding_pages/widgets/background.dart';
import 'package:flutter/material.dart';

class OBWellcome extends StatelessWidget {
  const OBWellcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OBBackground(
      topText: 'Fome D+ Delivery',
      imageProvider: AssetImage(
        'assets/images/tela00.jpg',
      ),
      botomText:
          'Todos seus pedidos online e sem sair de casa, comodidade e facilidade para seu bem estar',
    );
  }
}
