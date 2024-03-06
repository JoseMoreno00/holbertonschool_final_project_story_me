import 'dart:io';
import 'imports.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:storyme_release/authenticator/registerauth.dart';

//=============================================================================
// Main function, entry point of the app, start of the firebase app
//=============================================================================
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            appId: '1:816449824580:android:5ef7ce8e0bf4b513a35911',
            messagingSenderId: '816449824580',
            projectId: 'storyme-final',
            apiKey: 'AIzaSyD1FGUKdADxeJ_SWZsNJifufJ21KabueS4',
            storageBucket: 'storyme-final.appspot.com',
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

//=============================================================================
// State provider for the app
//=============================================================================
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

//=============================================================================
// Build constructo, take welcome widget as the first widget to be displayed
//=============================================================================
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Route of the first widget
      initialRoute: '/welcome_widget',
      routes: {
        // Navigation routes
        '/welcome_widget': (context) => const WelcomeWidget(),
        '/register_widget': (context) => const RegisterWidget(),
        '/login_widget': (context) => const LogInWidget(),
        '/home_widget': (context) => const HomeWidget(),
        '/story_widget': (context) => const StylesWidget(),
      },
    );
  }
}
