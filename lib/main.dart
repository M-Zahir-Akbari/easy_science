import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const EasyScience());
}

class EasyScience extends StatelessWidget {
  const EasyScience({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Science',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
