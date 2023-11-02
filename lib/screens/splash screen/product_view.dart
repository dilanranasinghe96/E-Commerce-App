import 'package:e_commerce_app/components/custom_button.dart';
import 'package:e_commerce_app/components/custom_text.dart';
import 'package:flutter/material.dart';

import '../../models/phone_model.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key, required this.phone});
  final Phone phone;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          backgroundColor: Colors.purple,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.95,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.phone.image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPoppinsText(
                      text: widget.phone.name,
                      color: Colors.black,
                      fsize: 25,
                      fweight: FontWeight.bold),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "\$ ${widget.phone.price}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPoppinsText(
                      text: widget.phone.description,
                      color: Colors.black,
                      fsize: 16,
                      fweight: FontWeight.w500),
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.75,
              child: Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    CustomButton(
                        size: size,
                        ontap: () {},
                        colors: const [
                          Colors.deepPurpleAccent,
                          Colors.purpleAccent
                        ],
                        text: "Buy Now"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
