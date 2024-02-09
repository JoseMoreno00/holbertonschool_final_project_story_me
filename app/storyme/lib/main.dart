import 'package:flutter/material.dart';
import 'package:story_me/story_widget.dart';
import 'gallery.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryWidget();
  }
}
