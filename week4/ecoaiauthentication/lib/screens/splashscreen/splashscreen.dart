import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splashscreen > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(height: 300, 'assets/bot.jpeg'),
          Center(
              child: ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.purple,
                          Color.fromARGB(255, 54, 244, 57),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                  blendMode: BlendMode.srcIn,
                  child: Column(children: [
                    Text(
                      'EcoAI',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ).copyWith(color: Colors.blue),
                    ),
                  ])))
        ],
      ),
    );
  }
}
