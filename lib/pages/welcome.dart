import 'package:authui/components/ButtonFilled.dart';
import 'package:authui/components/ButtonUnfilled.dart';
import 'package:authui/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void _navigateToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(image: AssetImage("assets/images/logo.png")),
                  const SizedBox(height: 40.0),
                  Button(
                    title: "Login",
                    onPressed: () {
                      _navigateToLoginPage(context);
                    },
                  ),
                  const SizedBox(height: 20.0),
                  UnfilledButton(
                    title: "Register",
                    onPressed: () {
                      _navigateToLoginPage(context);
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Continue as a guest!",
                    style: TextStyle(
                      color: Color(0xFF34C2C1),
                      fontSize: 15,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w700,
                      decorationStyle: TextDecorationStyle.solid,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
