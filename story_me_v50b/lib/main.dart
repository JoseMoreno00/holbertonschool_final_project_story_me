import 'package:flutter/material.dart';
import 'welcome_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome_widget',
      routes: {
        '/welcome_widget': (context) => const WelcomeWidget(),
      },
    );
  }
}

