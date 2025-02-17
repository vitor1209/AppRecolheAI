import 'package:apprecolheai/pages/inicioPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        secondaryHeaderColor: Colors.amber,
        fontFamily: 'Poppins',
      ),
      home: InicioPage(),
    );
  }
}
