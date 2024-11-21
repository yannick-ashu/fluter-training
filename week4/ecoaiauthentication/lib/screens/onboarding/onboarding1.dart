import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 300,
              width: 100,
              color: Colors.amber,
              child: Image.asset(
                height: 500,
                "assets/pickupagent.png",
              )),
          SizedBox(
            height: 300,
            width: 350,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(28)),
            ),
          ),
        ],
      ),
    );
  }
}
