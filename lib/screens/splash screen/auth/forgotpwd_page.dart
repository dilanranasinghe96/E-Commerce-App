import 'package:e_commerce_app/components/auth_background.dart';
import 'package:e_commerce_app/components/custom_button.dart';
import 'package:e_commerce_app/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final TextEditingController resetPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: AuthBackground(
            size: size,
            content: ListView(
              children: [
                CustomTextField(
                    label: "Email",
                    controller: resetPwdController,
                    prefix: Icons.mail_outline),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                    size: size,
                    ontap: () {},
                    colors: const [
                      Colors.deepPurpleAccent,
                      Colors.purpleAccent
                    ],
                    text: "Reset password")
              ],
            ),
            text: "Reset your password"),
      ),
    );
  }
}
