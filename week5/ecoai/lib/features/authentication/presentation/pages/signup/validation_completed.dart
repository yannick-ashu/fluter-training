import 'package:ecoai/features/home_screen/pages/home_screen.dart';
import 'package:flutter/material.dart';

class ValidationCompleted extends StatefulWidget {
  const ValidationCompleted({super.key});

  @override
  State<ValidationCompleted> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ValidationCompleted> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    icon: const Icon(Icons.cancel_sharp)),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(height: 200, "assets/bot2.png"),
              const SizedBox(
                height: 20,
              ),
              const Text("Congratulations your PIN has been created")
            ],
          ),
        ),
      ),
    );
  }
}
