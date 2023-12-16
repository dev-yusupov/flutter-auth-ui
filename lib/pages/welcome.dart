// import 'package:authui/components/Button.dart';
import 'package:authui/components/ButtonFilled.dart';
import 'package:authui/components/ButtonUnfilled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void hello() {
  print("Hello, World!");
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover))),
          const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage("assets/images/logo.png")),
                    SizedBox(height: 40.0),
                    Button(
                      title: "Login",
                      onPressed: hello,
                    ),
                    SizedBox(height: 20.0),
                    UnfilledButton(title: "Register", onPressed: hello),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
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
              ))
        ],
      )),
    );
  }
}
