import 'dart:async';
import 'package:ecoai/screens/onboarding1/onboardscreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Onboardscreen()));
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   height: 200,
          //   width: 200,
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           colors: [Colors.blue, Colors.green],
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter)),
          // ),
          Center(child: Image.asset("assets/logo.png"))
        ],
      ),
    );
  }
}
