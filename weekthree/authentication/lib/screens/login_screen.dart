import 'package:flutter/material.dart';
import 'package:project1/screens/signin_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?ga=GA1.1.242130947.1709302562&semt=ais_hybrid")),
              const SizedBox(
                height: 5,
              ),
              inputForm(
                  isVisible: false,
                  label: 'Email',
                  prefixIcon: const Icon(Icons.mail),
                  controller: emailController),
              const SizedBox(
                height: 21,
              ),
              inputForm(
                  prefixIcon: const Icon(Icons.lock),
                  isVisible: isPassword,
                  controller: passController,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: isPassword
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined))),
              Row(
                children: [
                  builtTextButton(label: "Forgot Password?", onPressed: () {}),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          "Sign in"),
                    ),
                  ),
                ),
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
                                builder: (context) =>
                                    const RegistrationScreen()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("Or"),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  ))
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 160,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 121, 121, 121),
                                width: 2),
                            borderRadius: BorderRadius.circular(8)),
                        child: Expanded(
                            child:
                                Image.asset(height: 20, "assets/google2.png"))),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 160,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 121, 121, 121),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Expanded(
                            child:
                                Image.asset(height: 10, "assets/apple1.png"))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputForm(
    {Widget? prefixIcon,
    Widget? suffixIcon,
    String? label,
    TextEditingController? controller,
    dynamic validator,
    bool isVisible = true}) {
  return TextFormField(
    controller: controller,
    obscureText: isVisible,
    validator: validator ??
        (value) {
          if (value!.isEmpty) {
            return 'Please Enter a Value';
          }
          return null;
        },
    decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: label ?? 'Password',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black, width: 1))),
  );
}

Widget buildButton({
  Function? onPresssed,
  String? label,
  style,
}) {
  return ElevatedButton(
      onPressed: () {
        onPresssed?.call();
      },
      child: Text(
        label ?? 'Submit',
        style: const TextStyle(color: Colors.white),
      ));
}

Widget builtTextButton({Function? onPressed, String? label}) {
  return TextButton(
      onPressed: () {
        onPressed?.call();
      },
      style: TextButton.styleFrom(backgroundColor: Colors.transparent),
      child: Text(
        label ?? "Forgot Password?",
        style: const TextStyle(
          color: Colors.blue,
        ),
      ));
}
