import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:storyme_rework/functions/bottom_navigation_bar.dart';
import 'package:storyme_rework/functions/cuentos_player.dart';

class ReproductorScreen extends StatefulWidget {
  const ReproductorScreen({Key? key}) : super(key: key);

  @override
  _ReproductorScreenState createState() => _ReproductorScreenState();
}

class _ReproductorScreenState extends State<ReproductorScreen> {
  final DatabaseReference database = FirebaseDatabase().reference().child('cuentos');
  List<String> imageUrls = [];
  List<String> texts = [];
  int currentIndex = 0;
  final CuentosPlayer player = CuentosPlayer(); // Instancia de la clase CuentosPlayer

  @override
  void initState() {
    super.initState();
    loadCuentos();
  }

  Future<void> loadCuentos() async {
    database.once().then((DataSnapshot snapshot) {
      Object? values = snapshot.value;
      var forEach = values?.forEach((key, value) {
        setState(() {
          imageUrls.add(value['imageUrl']);
          texts.add(value['text']);
        });
      });
    } as FutureOr Function(DatabaseEvent value));
  }

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
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          // Aquí va el contenido principal de la pantalla
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imageUrls.isNotEmpty && currentIndex < imageUrls.length)
                  Image.network(imageUrls[currentIndex]),
                const SizedBox(height: 20),
                if (texts.isNotEmpty && currentIndex < texts.length)
                  Text(
                    texts[currentIndex],
                    style: const TextStyle(fontSize: 24, color: Colors.black),
                  ),
              ],
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
            Navigator.of(context).pushNamed('/biblioteca'); // Ir a la pantalla de biblioteca
          } else if (index == 3) {
            Navigator.of(context).pushNamed('/descargas'); // Ir a la pantalla de descargas
          } else if (index == 4) {
            Navigator.of(context).pushNamed('/menu'); // ir al menu
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          player.playCuento(texts[currentIndex]);
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
