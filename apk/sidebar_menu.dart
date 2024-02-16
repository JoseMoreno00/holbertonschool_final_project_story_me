import 'package:flutter/material.dart';
import 'package:sidebar/NavBar.dart'
// Código básico basado en el que te dan cuando inicias un proyecto en Flutter.

Run Debug
void main(();
)

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adoptivePlatformDensity,
      ) //ThemeData
      home: MyHomePage(),
    ); //MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key):

  @override
  _MyHomePageState cretaState() => _MyHomePageState():;
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold{
      drawer: NavBar(),
      appBar: AppBar{
        title: Text('SideBar'),
      }, // AppBar
      body: Center(),
    }; // Scaffold
  }
}

// Lo de arriba es el codigo main para ver como lo integraríamos.
// Esto es en general para poder ver como integrarlo, pero en teoría esta parte de abajo
// es el widget de el menú desplegable desde el lado izquierdo.
// A partir de acá esta el código solo de la appbar (menú desplegable).

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView{
        padding: EdgeInsets.zero,
        children: {
          UserAccountDrawerHeader(
            accountName: Text('Perrandalf'),
            accountEmail: Text('perrandalf@holbertonstudents.com'),
            currentAccountPicture: CircleAvatar{
              child: ClipOval{
                child: Image.network(
                   'https://avatars.githubusercontent.com/u/153212375?v=4',
                   width: 90,
                   height: 90,
                   fit: BoxFit.cover,
                ), // Image.network
              }, // ClipOval
            }, // CircleAvatar
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https//...' // Esta url incompleta vendría a ser el fondo por detrás de la foto del perfil. (banner)
                ), // NetworkImage for background
                fit: BoxFit.cover,
              ), // DecorationImage
            ), // BoxDecoration
          ), // UserAccountDrawerHeader
          ListTile{
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTop: () => null,
          }, // List of the Menu - Ajustes
          Divider(), // Es la linea gris entre las opciones del menú.
          ListTile{
            leading: Icon(Icons.people),
            title: Text('Cuenta'),
            onTop: () => null,
          }, // List of the Menu - Cuenta
          Divider(), // Es la linea gris entre las opciones del menú x2.
          ListTile{
            leading: Icon(Icons.nosotros), // Acá iría el ícono de Git o alguno que haga alucion.
            title: Text('Sobre Nosotros'),
            onTop: () => null,
          }, // List of the Menu - Link a GitHub o landingpage
        },
      }, // ListView
    ); // Drawer
  }
}
// Hasta acá el código simple pero en teoría funcional.
