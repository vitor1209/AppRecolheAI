// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.08,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.03,
                left: screenWidth * 0.04,
              ),
              child: Row(
                children: [
                  Text(
                    'R',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'ecolhe',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'AI',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.032,
              right: screenWidth * 0.08,
            ),
            child: Icon(Icons.help, size: 40, color: Color(0xFFB1B1B1)),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.04),
          Carousel(context),
          Container(
            padding: EdgeInsets.only(
              top: screenHeight * 0.04,
              left: screenWidth * 0.125,
              right: screenWidth * 0.125,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: screenHeight * 0.30,
                      width: screenWidth * 0.30,
                      child: Icon(
                        Icons.favorite_outline,
                        size: 70,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BtnPlanos(context),
                    SizedBox(height: screenHeight * 0.04),
                    BtnCentroColeta(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget Carousel(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return FlutterCarousel(
    options: FlutterCarouselOptions(
      height: screenHeight * 0.18,
      autoPlay: true,
      enableInfiniteScroll: true,
      autoPlayInterval: const Duration(seconds: 20),
      enlargeCenterPage: true,
      showIndicator: false,
    ),
    items:
        [
          'lib/assets/images/banner1.png',
          'lib/assets/images/banner2.png',
          'lib/assets/images/banner3.png',
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(i, width: screenWidth, fit: BoxFit.cover),
              );
            },
          );
        }).toList(),
  );
}

Widget BtnPlanos(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      height: screenHeight * 0.13,
      width: screenWidth * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.account_balance_wallet_outlined,
            size: 55,
            color: Colors.black,
          ),
          Text(
            'Planos',
            style: TextStyle(
              fontSize: 14,
              color: Colors.brown,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget BtnCentroColeta(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300], // Cor de fundo
        borderRadius: BorderRadius.circular(12),
      ),
      height: screenHeight * 0.13,
      width: screenWidth * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.bookmark_outline, size: 55, color: Colors.black),
          Text(
            'Centros de Coleta',
            style: TextStyle(
              fontSize: 12,
              color: Colors.brown,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}
