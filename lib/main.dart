import 'package:flutter/material.dart';
import 'package:vera_screen/splash/splashscreen.dart';

void main() {
  runApp(const Verascreen());
}

class Verascreen extends StatelessWidget {
  const Verascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

  