// import 'package:authui/components/Button.dart';
import 'package:flutter/material.dart';

void hello() {
  print("Hello, World!");
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover
            )
          ),
        ),
      )
    );
  }
}
