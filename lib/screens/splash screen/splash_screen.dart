import 'package:e_commerce_app/screens/splash%20screen/auth/signin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 5,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignIn(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/assets/logo.png",
                  width: size.width * 0.5,
                  height: size.height * 0.5,
                ),
              ],
            ),
          ),
          const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: CupertinoActivityIndicator(
                  radius: 15,
                ),
              ))
        ],
      ),
    );
  }
}
