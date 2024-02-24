import 'package:flutter/material.dart';
import 'package:storymev50b2/authenticator/authen.dart';
import 'package:storymev50b2/home_widget.dart';
import 'package:storymev50b2/log_in_widget.dart';
import 'package:storymev50b2/register_widget.dart';
import 'package:storymev50b2/styles_widget.dart';
import 'welcome_widget.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => LogInUser()),
      ChangeNotifierProvider(create: (_) => RegisterUser())
    ], child: const MyApp());
  }
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
        '/register_widget': (context) => const RegisterWidget(),
        '/login_widget': (context) => const LogInWidget(),
        '/galery_widget': (context) => const HomeWidget(),
        '/story_widget': (context) => const StylesWidget(),
      },
    );
  }
}
