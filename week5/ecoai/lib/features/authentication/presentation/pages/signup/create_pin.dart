import 'package:ecoai/features/authentication/presentation/pages/signup/validation_completed.dart';
import 'package:ecoai/features/authentication/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CreatePin> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  String verifyPassword = '123';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(style: TextStyle(color: Colors.white), "Create Pin"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/bot2.png"),
                height: 150,
              ),
              const Text(
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  "Create PIN"),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    style: TextStyle(fontSize: 15),
                    "Create a 4 digit access PIN to enhance your apps protection"),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        InputsFields(
                          controller: TextEditingController(),
                          label: "Enter PIN",
                          sufixIcon: const Icon(
                            Icons.visibility,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a password";
                            }
                          },
                          hintText: " Create a password",
                          obscureText: true,
                        ),
                        const SizedBox(height: 15),
                        InputsFields(
                          label: "Confirm PIN",
                          obscureText: true,
                          hintText: " Confirm your password",
                          sufixIcon: const Icon(
                            Icons.visibility,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please confirm pin";
                            }
                            if (value.length < 4) {
                              return "Password must be at least 6 characters";
                            }
                            if (value != passwordController.text) {
                              return "Make sure the password match";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          width: 350,
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ValidationCompleted()));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  backgroundColor: Colors.green,
                                  elevation: 5,
                                  overlayColor: Colors.white),
                              child: const Text(
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  "Confirm")),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
