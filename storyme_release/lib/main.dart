import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:storyme_release/authenticator/registerauth.dart';
import 'package:storyme_release/imports.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            appId: '1:816449824580:android:5ef7ce8e0bf4b513a35911',
            messagingSenderId: '816449824580',
            projectId: 'storyme-final',
            apiKey: 'AIzaSyD1FGUKdADxeJ_SWZsNJifufJ21KabueS4',
          ),
        )
      : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => LogInUser()),
      ChangeNotifierProvider(create: (_) => RegisterUser())
    ], child: const MyApp());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("users");
    QuerySnapshot users = await collectionReference.get();

    if (users.docs.isNotEmpty == true) {
      for (var doc in users.docs) {
        if (kDebugMode) {
          print(doc.data());
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
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
        '/galery_widget': (context) => const HomeWidget(),
        '/story_widget': (context) => const StylesWidget(),
      },
    );
  }
}
