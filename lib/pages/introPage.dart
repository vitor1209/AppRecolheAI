// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:apprecolheai/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController controller = PageController();
  //! controller para passar se o user clicar na tela
  void passsarPage() {
    controller.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.green,
      body: GestureDetector(
        onTap: passsarPage, // clique na tela para avançar chama nextPage
        child: PageView(
          controller: controller,
          children: [
            Intro1(context),
            Intro2(context),
            Intro3(context),
            Intro4(context),
            Intro5(context),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.07),
            child: SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.lightBlueAccent,
                dotColor: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Intro1(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          './lib/assets/images/logoRecolheai.png',
          height: screenHeight * 0.3,
        ),
        SizedBox(height: 20),
        Text(
          'RECOLHEAI',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: screenWidth * 0.65,
          padding: EdgeInsets.only(top: screenHeight * 0.04),
          child: Text(
            'Automatize a reciclagem de forma inteligente com o Recolhe Ai. Facilite a separação de resíduos e colabore com um planeta mais limpo.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Intro2(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.1),
          child: Image.asset(
            './lib/assets/images/logoRecolheai.png',
            height: screenHeight * 0.3,
          ),
        ),
        Container(
          width: screenWidth * 0.85,
          child: Text(
            'Automatização da Separação de Resíduos',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: screenWidth * 0.70,
          padding: EdgeInsets.only(top: screenHeight * 0.01),
          child: Text(
            'Automatize a separação dos resíduos com precisão, utilizando a tecnologia do Recolhe Ai. Nossos algoritmos de inteligência artificial que identificam e classificam cada material de forma eficiente.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Saiba mais',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Intro3(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          './lib/assets/images/logoRecolheai.png',
          height: screenHeight * 0.3,
        ),
        Container(
          width: screenWidth * 0.9,
          child: Text(
            'Integração com IoT',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: screenWidth * 0.70,
          padding: EdgeInsets.only(top: screenHeight * 0.035),
          child: Text(
            'Conecte-se e monitore seu sistema de reciclagem em tempo real através da nossa plataforma IoT. Acompanhe os dados de reciclagem de sua lixeira e de lixeiras publicas.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Intro4(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          './lib/assets/images/logoRecolheai.png',
          height: screenHeight * 0.3,
        ),
        Container(
          width: screenWidth * 0.9,
          child: Text(
            'Reciclagem Sustentável',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: screenWidth * 0.68,
          padding: EdgeInsets.only(top: screenHeight * 0.035),
          child: Text(
            'Contribua para um futuro sustentável reciclando de maneira eficiente e automatizada. O Recolhe Ai facilita a reciclagem em grandes volumes, reduzindo o impacto ambiental.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Intro5(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.1),
          child: Image.asset(
            './lib/assets/images/logoRecolheai.png',
            height: screenHeight * 0.3,
          ),
        ),
        SizedBox(
          width: screenWidth * 0.85,
          child: Text(
            'Controle e Monitoramento',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: screenWidth * 0.75,
          padding: EdgeInsets.only(top: screenHeight * 0.01),
          child: Text(
            'Acompanhe e controle todo o processo de reciclagem através de um painel intuitivo. Obtenha relatórios detalhados e otimize seu processo de reciclagem.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => Homepage());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'Ver o App',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ),
  );
}
