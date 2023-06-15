import 'package:flutter/material.dart';
import 'package:travelapp/menu.dart';

import 'package:travelapp/pages/homePage.dart';
import 'package:travelapp/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      home: onboardingPage(),
    );
  }
}
