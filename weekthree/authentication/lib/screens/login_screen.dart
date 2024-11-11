import 'package:flutter/material.dart';

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
                width: 320,
                child: buildButton(onPresssed: () {
                  print(emailController.text);
                  print(passController.text);
                  Colors.blue;
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
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
              Row(
                children: [
                  buildButton(
                    label: "Facebook",
                  ),
                  buildButton(
                    label: "Google",
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
