// ignore_for_file: file_names

import 'package:apprecolheai/pages/IntroPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: GestureDetector(
        onTap: () {
          Get.to(() => IntroPage());
        },
        child: Center(
          child: Stack(
            //! GestureDetector em toda tela
            children: [
              Positioned.fill(child: Container(color: Colors.transparent)),
              Center(
                child: Image.asset(
                  'lib/assets/images/logoRecolheai.png',
                  height: screenHeight * 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
