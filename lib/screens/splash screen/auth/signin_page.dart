import 'package:e_commerce_app/components/auth_background.dart';
import 'package:e_commerce_app/components/custom_button.dart';
import 'package:e_commerce_app/screens/splash%20screen/auth/forgotpwd_page.dart';
import 'package:e_commerce_app/screens/splash%20screen/auth/signup_page.dart';
import 'package:e_commerce_app/screens/splash%20screen/home/main_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../components/custom_textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: AuthBackground(
        size: size,
        text: "Sign in to your account",
        content: ListView(
          children: [
            CustomTextField(
              isPassword: false,
              label: 'Email',
              controller: _emailController,
              prefix: Icons.email_outlined,
            ),
            CustomTextField(
              label: "Password",
              controller: _passwordController,
              prefix: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ));
                },
                child: CustomPoppinsText(
                    text: "Forgot password?",
                    color: Colors.purpleAccent,
                    fsize: 20,
                    fweight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              size: size,
              colors: const [Colors.deepPurpleAccent, Colors.purpleAccent],
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ));
              },
              text: "Sign in",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CustomPoppinsText(
                    text: "or",
                    color: Colors.purpleAccent,
                    fsize: 18,
                    fweight: FontWeight.w500),
              ),
            ),
            CustomButton(
              size: size,
              colors: const [Colors.deepPurpleAccent, Colors.purpleAccent],
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ));
              },
              text: "Create Account",
            ),
          ],
        ),
      )),
    );
  }
}
