import 'package:e_commerce_app/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.size,
      required this.ontap,
      required this.colors,
      required this.text});

  final Size size;
  VoidCallback ontap;
  List<Color> colors;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          width: size.width * 0.6,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: colors)),
          child: Center(
            child: CustomPoppinsText(
                color: Colors.white,
                fsize: 20,
                fweight: FontWeight.w500,
                text: text),
          )),
    );
  }
}
