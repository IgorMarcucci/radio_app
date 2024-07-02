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
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(199, 0, 0, 0), 
                    offset: Offset(2, 4), 
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
