import 'dart:ui';

import 'package:flutter/cupertino.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          children: [
            Container(
  height: 300,
  width: 300,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image: const DecorationImage(
      image: AssetImage('bandeira.jpg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
      isAntiAlias: true,
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(199, 0, 0, 0), 
        offset: Offset(2, 4), 
        blurRadius: 5,
      ),
    ],
  ),
  child: ClipRRect( // Para evitar que o blur se espalhe além dos limites do contêiner
    borderRadius: BorderRadius.circular(20),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Ajuste os valores de sigmaX e sigmaY para controlar o desfoque
      child: Container(
        color: const Color.fromARGB(0, 0, 0, 0), 
      ),
    ),
  ),
),
          ],
        ),
      )
    );
  }
}
