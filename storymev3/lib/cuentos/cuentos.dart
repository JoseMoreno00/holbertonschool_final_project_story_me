import 'package:flutter/material.dart';
import 'package:storyme_rework/functions/bottom_navigation_bar.dart';

class CuentosScreen extends StatelessWidget {
  const CuentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20, // Ajusta la posición vertical según necesites
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 100, // Ajusta el tamaño del logo según necesites
                height: 100,
              ),
            ),
          ),
          // Aquí va el contenido principal de la pantalla
          const Center(
            child: Text(
              'Cuentos',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 2, // Índice correspondiente a la pantalla de librería
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pop(); // Volver atrás
          } else if (index == 1) {
            Navigator.of(context).pushNamed('/cuentos'); // Ir a la pantalla de librería
          } else if (index == 2) {
            Navigator.of(context).pushNamed('/biblioteca'); // Ir a la pantalla de descargas
          } else if (index == 3) {
            Navigator.of(context).pushNamed('/descargas');
          } else if (index == 4) {
            Navigator.of (context).pushNamed('/menu');
          }
        },
      ),
    );
  }
}
