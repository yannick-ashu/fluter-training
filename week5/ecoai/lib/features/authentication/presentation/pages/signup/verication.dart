import 'package:ecoai/features/authentication/presentation/pages/signup/create_pin.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verication extends StatefulWidget {
  const Verication({super.key});

  @override
  State<Verication> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Verication> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? enteredPin;
  String correctedPin = "123456";

  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Row(
          children: [
            Text(style: TextStyle(color: Colors.white), "Number Verification"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(height: 180, "assets/bot2.png"),
              ),
              const Text(
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  "Verification"),
              const SizedBox(height: 15),
              const Text(
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  "Please provide the code sent to this number 674449645"),
              const SizedBox(height: 15),
              pinputForm(controller: pinController),
              const SizedBox(height: 25),
              const Text("Code expires in : 1:59"),
              const SizedBox(height: 25),
              SizedBox(
                height: 35,
                width: 280,
                child: GestureDetector(
                  onTap: () {
                    print(pinController.text);
                    print(correctedPin);
                    if (pinController.text == correctedPin) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreatePin()));
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    child: const Center(
                        child: Text(
                            style: TextStyle(color: Colors.white), "Verify")),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pinputForm({required TextEditingController controller}) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            Pinput(
                length: 6,
                validator: (value) =>
                    value == correctedPin ? null : "Pin is incorrect",
                controller: controller,
                onCompleted: (pin) {
                  (pin) {
                    enteredPin = pin;
                    print("Entered pin: $pin");
                  };
                }),
          ],
        ));
  }
}
