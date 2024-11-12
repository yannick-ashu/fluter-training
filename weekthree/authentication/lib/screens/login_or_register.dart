import 'package:flutter/material.dart';
import 'package:project1/screens/login_screen.dart';
import 'package:project1/screens/signin_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _loginOrRegister();
}

// ignore: camel_case_types
class _loginOrRegister extends State<LoginOrRegister> {
  bool showloginpage = true;

  //toggle between loginor register page

  void togglePages() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return const LoginScreen();
    } else {
      return const RegistrationScreen();
      
    }
  }
}
