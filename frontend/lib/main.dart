import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/auth/email_sign_in_screen.dart';
import 'screens/auth/email_sign_up_screen.dart';
import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pencils to People',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/signin',
      routes: {
        '/signin': (context) => const EmailSignInScreen(),
        '/signup': (context) => const EmailSignUpScreen(),
        '/home': (context) => const HomeScreen(userEmail: ''),
      },
    );
  }
}