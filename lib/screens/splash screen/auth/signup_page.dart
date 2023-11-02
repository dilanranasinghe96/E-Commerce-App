import 'package:e_commerce_app/components/auth_background.dart';
import 'package:e_commerce_app/components/custom_button.dart';
import 'package:e_commerce_app/screens/splash%20screen/auth/signin_page.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: AuthBackground(
          size: size,
          content: ListView(children: [
            CustomTextField(
              label: 'Email',
              controller: _emailController,
              prefix: Icons.email_outlined,
            ),
            CustomTextField(
              isPassword: true,
              label: 'Password',
              controller: _passwordController,
              prefix: Icons.lock_outline,
            ),
            CustomTextField(
              isPassword: true,
              label: 'Confirm password',
              controller: _confirmpasswordController,
              prefix: Icons.lock_outline,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                size: size,
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ));
                },
                colors: const [Colors.deepPurpleAccent, Colors.purpleAccent],
                text: 'Create account')
          ]),
          text: "Create your account",
        ),
      ),
    );
  }
}
