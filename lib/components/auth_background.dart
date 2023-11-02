import 'package:e_commerce_app/components/custom_text.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  AuthBackground(
      {super.key,
      required this.size,
      required this.content,
      required this.text});

  final Size size;
  Widget content;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.25,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: const AssetImage("lib/assets/samsung1.jpg"),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.17,
                ),
                CustomPoppinsText(
                    text: text,
                    color: Colors.white,
                    fsize: 20,
                    fweight: FontWeight.w500)
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.23,
            child: Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child:
                  Padding(padding: const EdgeInsets.all(30.0), child: content),
            ),
          )
        ],
      ),
    );
  }
}
