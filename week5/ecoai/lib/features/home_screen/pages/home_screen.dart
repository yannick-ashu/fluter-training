import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              "EcoAI"),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_outlined)),
            )
          ],
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/pickupagent.png")),
            Text(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                "Welcome Home")
          ],
        ),
      ),
    );
  }
}
