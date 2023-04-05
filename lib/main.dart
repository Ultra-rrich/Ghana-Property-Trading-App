import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gpt_app/constants/constants_spaces.dart';
import 'firebase_options.dart';
import 'new_screens/home_screen.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: white,
      ),
      home: const HomeScreen(),
    );
  }
}
