// ignore_for_file: file_names

import 'package:apprecolheai/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mapspage extends StatefulWidget {
  const Mapspage({super.key});

  @override
  State<Mapspage> createState() => _MapspageState();
}

class _MapspageState extends State<Mapspage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mapa',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xFF074731)),
            width: screenWidth,
            height: screenHeight * 0.08,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.08,
              vertical: screenHeight * 0.035,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.055,
                vertical: screenHeight * 0.01,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFDCE8E4),
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => Homepage());
                    },
                    icon: Icon(Icons.home_outlined, size: 30),
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_on_outlined, size: 30),
                    color: Colors.lightBlueAccent,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_outline, size: 30),
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline, size: 30),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
