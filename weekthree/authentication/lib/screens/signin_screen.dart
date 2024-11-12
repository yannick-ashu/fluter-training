// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:project1/screens/login_or_register.dart';
import 'package:project1/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  get passController => null;

  @override
  Widget build(BuildContext context) {
    bool isPrivate = true;
    SingleChildScrollView;
    Colors.blue;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //heading one
                const Text(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                    "Create Account"),
                const SizedBox(
                  height: 10,
                ),
                //second text
                const Text(style: TextStyle(), "Become new user"),

                const SizedBox(
                  height: 30,
                ),

                //form
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    inputs(
                      label: "Username",
                      prefixIcon: const Icon(Icons.person),
                      isVisible: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    inputs(
                        label: "Email",
                        prefixIcon: const Icon(Icons.email),
                        isVisible: false),
                    const SizedBox(
                      height: 20,
                    ),
                    inputs(
                        label: "Create Password",
                        isVisible: isPrivate,
                        prefixIcon: const Icon(Icons.lock),
                        controller: passController,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPrivate = !isPrivate;
                              });
                            },
                            icon: isPrivate
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility_off_outlined))),
                    const SizedBox(
                      height: 20,
                    ),
                    inputs(
                        label: "Verify password",
                        isVisible: isPrivate,
                        prefixIcon: const Icon(Icons.lock),
                        controller: passController,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPrivate = isPrivate;
                              });
                            },
                            icon: isPrivate
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility_outlined))),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                              "Sign in"),
                        ),
                      ),
                    )
                  ],
                ),

                //button
                const SizedBox(
                  height: 20,
                ),
                //divider line
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Or"),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),
                //iconbuttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 122, 121, 121),
                              width: 2),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Expanded(
                          child: Image.asset(height: 15, "assets/google2.png")),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 122, 121, 121),
                              width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Expanded(
                          child: Image.asset(height: 15, "assets/apple1.png")),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("By signing up you agree to the"),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(color: Colors.blue),
                                "Terms of service"))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginScreen()));
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blue), "Login"))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget inputs(
    {String? label,
    Widget? prefixIcon,
    Widget? suffixIcon,
    TextEditingController? controller,
    dynamic validator,
    bool isVisible = true}) {
  return TextFormField(
    validator: validator ??
        (value) {
          if (value!.isEmpty) {
            return "Enter a Username";
          }
          return null;
        },
    obscureText: isVisible,
    decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: label ?? "",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black))),
  );
}
