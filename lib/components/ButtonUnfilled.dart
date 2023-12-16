import 'package:flutter/material.dart';

class UnfilledButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const UnfilledButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 250.0), // Set your maximum width here
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 95),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.0,
            color: const Color(0xFF1E232C),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1E232C),
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
          child: UnfilledButton(
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
