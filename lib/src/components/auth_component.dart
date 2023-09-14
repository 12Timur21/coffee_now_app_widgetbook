import 'package:coffee_now_app_widgetbook/src/widgets/buttons/custom_button.dart';
import 'package:coffee_now_app_widgetbook/src/widgets/text_fields/email_text_field.dart';
import 'package:coffee_now_app_widgetbook/src/widgets/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons/buttons_assembly.dart';

class AuthComponent extends StatelessWidget {
  const AuthComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const EmailTextField(),
            const SizedBox(height: 30),
            const PasswordTextField(),
            const SizedBox(height: 30),
            CustomButton(
              onTap: () {},
              text: "Sign in",
            ),
          ],
        ),
      ),
    );
  }
}
