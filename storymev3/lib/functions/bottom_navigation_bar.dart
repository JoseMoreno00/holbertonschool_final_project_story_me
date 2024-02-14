import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back),
          label: 'Atrás',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Cuentos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Biblioteca',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download_rounded),
          label: 'Descargas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menú',
        ),
      ],
    );
  }
}
