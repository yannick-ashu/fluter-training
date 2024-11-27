import 'package:ecoai/features/authentication/presentation/pages/signup/sign_up.dart';
import 'package:flutter/material.dart';

class LoginOption1 extends StatefulWidget {
  const LoginOption1({super.key});

  @override
  State<LoginOption1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginOption1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(height: 80, "assets/bot2.png"),
          const Column(
            children: [Text("Welcome Back")],
          )
        ],
      ),
    );
  }
}
