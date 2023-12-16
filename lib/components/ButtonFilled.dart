import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const Button({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 250.0), // Set your maximum width here
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 95),
        decoration: BoxDecoration(
          color: const Color(0xFF1E232C), // Change the background color as needed
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white, // Change the text color as needed
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Button(
            title: "Press Me",
            onPressed: () {
              print("Button Pressed!");
            },
          ),
        ),
      ),
    ),
  );
}
