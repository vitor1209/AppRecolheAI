// ignore_for_file: file_names

import 'package:apprecolheai/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
      body: Column(
        children: [
          _buildMaps(screenWidth, screenHeight, context),
          SizedBox(height: screenHeight * 0.02),
        ],
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

Widget _buildMaps(
  double screenWidth,
  double screenHeight,
  BuildContext context,
) {
  return SizedBox(
    height: screenHeight * 0.5,
    width: screenWidth,
    child: Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(-23.703947464720905, -46.41383419958605),
            initialZoom: 17,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.apprecolheai',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(-23.703947464720905, -46.41383419958605),
                  child: IconButton(
                    onPressed: () {
                      // Chama o modal ao clicar no botão
                      _showModal(context);
                    },
                    icon: Icon(Icons.location_on, color: Colors.red, size: 35),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: screenHeight * 0.05,
          right: screenWidth * 0.05,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFDCE8E4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.gps_fixed, size: 30),
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

void _showModal(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        height: screenHeight * 0.5,
        width: screenWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Informações da Lixeira',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Preenchimento da lixeira:'),
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'lib/assets/images/LixeiraFalse.png',
                  height: screenHeight * 0.1,
                ),
                SizedBox(width: 10),
                Text('Vazia'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Fechar'),
            ),
          ],
        ),
      );
    },
  );
}
