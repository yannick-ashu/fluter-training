import 'package:ecoai/features/authentication/presentation/pages/signup/verication.dart';
import 'package:ecoai/features/authentication/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.only(top: 100),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                          "Create Account"),
                      Text(
                          style: TextStyle(color: Colors.black),
                          "Please all the fields to signup"),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: InputsFields(
                              keyboardType: TextInputType.text,
                              label: 'First name',
                              hintText: "Enter name",
                              prefixIcon: Icon(Icons.person),
                              sufixIcon: Icon(Icons.arrow_drop_down),
                              obscureText: false,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 3,
                            child: InputsFields(
                              keyboardType: TextInputType.text,
                              label: "Last name",
                              hintText: "Enter last name",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          InputsFields(
                            label: "Gender",
                            keyboardType: TextInputType.numberWithOptions(),
                            hintText: "Input gender",
                            sufixIcon: Icon(Icons.arrow_drop_down),
                            prefixIcon: Icon(Icons.people),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InputsFields(
                            label: "Region",
                            hintText: "Enter your region",
                            keyboardType: TextInputType.text,
                            sufixIcon: Icon(Icons.arrow_drop_down),
                            prefixIcon: Icon(Icons.location_on_outlined),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InputsFields(
                            label: "City",
                            hintText: "Input your city",
                            sufixIcon: Icon(Icons.arrow_drop_down),
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(Icons.location_city),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InputsFields(
                            label: "Phone Number",
                            keyboardType: TextInputType.number,
                            hintText: "Enter your phone number",
                            prefixIcon: Icon(Icons.phone),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                    ),
                    const Text("I agree to the"),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            minimumSize: WidgetStateProperty.all(Size.zero),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent)),
                        child: const Text(
                            style: TextStyle(
                              color: Colors.green,
                            ),
                            "Terms")),
                    const Text("and"),
                    const SizedBox(width: 7),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            minimumSize: WidgetStateProperty.all(Size.zero),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent)),
                        child: const Text(
                            style: TextStyle(color: Colors.green), "Condition"))
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 35,
                  width: 280,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verication()))
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(16)),
                      child: const Center(
                        child: Text(
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            "Sign up"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            minimumSize: WidgetStateProperty.all(Size.zero),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent)),
                        child: const Text(
                            style: TextStyle(color: Colors.green), "Login"))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
