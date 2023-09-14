import 'package:flutter/material.dart';

import 'custom_button.dart';

class ButtonsAssembly extends StatelessWidget {
  const ButtonsAssembly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Button',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
