import 'package:flutter/material.dart';
import 'package:storyme_rework/biblioteca/biblioteca.dart';
import 'package:storyme_rework/registro/registro.dart';
// import 'package:storyme_rework/galeria/galeria.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo de pantalla
          Image.asset(
            'assets/images/fondo.jpg',
            fit: BoxFit.cover,
          ),
          // Contenido de la pantalla
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                  ),
                ),
                const SizedBox(height: 20),
                // Casillas de entrada para el inicio de sesión
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Correo electrónico',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Botón de iniciar sesión
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Iniciar sesión'),
                ),
                const SizedBox(height: 10),
                // Botones de registro e invitado
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistroScreen()),
                        );
                      },
                      child: const Text('Regístrate'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BibliotecaScreen()),
                        );
                      },
                      child: const Text('Invitado'),
                    ),
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
