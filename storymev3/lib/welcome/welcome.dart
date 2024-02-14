import 'dart:async';
import 'package:flutter/material.dart';
import 'package:storyme_rework/login/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Cambia automáticamente a la ventana de login después de 7 segundos
    Timer(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/fondo.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 333,
                    height: 497,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                'StoryMe',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'DARKLANDS',
                      color: Colors.black),
                  ),
                const Text(
                  'Bienvenido',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'DARKLANDS',
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
