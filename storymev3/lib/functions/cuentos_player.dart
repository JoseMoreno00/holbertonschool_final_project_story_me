import 'package:flutter_tts/flutter_tts.dart';

class CuentosPlayer {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> playCuento(String text) async {
    await flutterTts.stop();
    await flutterTts.speak(text);
  }
}