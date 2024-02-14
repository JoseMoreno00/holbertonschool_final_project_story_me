import 'package:flutter/material.dart';
import 'welcome/welcome.dart';
import 'menu/menu.dart';
import 'login/login.dart';
import 'cuentos/cuentos.dart';
import 'biblioteca/biblioteca.dart';
import 'descargas/descargas.dart';
import 'reproductor/reproductor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/biblioteca': (context) => const BibliotecaScreen(),
        '/menu': (context) => const MenuScreen(),
        '/cuentos': (context) => const CuentosScreen(),
        '/descargas': (context) => const DescargasScreen(),
        '/reproductor': (context) => const ReproductorScreen(),
      },
    );
  }
}
