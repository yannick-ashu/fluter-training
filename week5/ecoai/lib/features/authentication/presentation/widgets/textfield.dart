import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField();
  }
}

class InputsFields extends StatelessWidget {
  final String? label;
  final Icon? prefixIcon;
  final Icon? sufixIcon;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChange;
  final bool? obscureText;
  final dynamic validator;
  final String hintText;
  final dynamic controller;

  // Contructor
  const InputsFields(
      {super.key,
      this.validator,
      this.controller,
      required this.label,
      required this.hintText,
      this.keyboardType,
      this.sufixIcon,
      this.prefixIcon,
      this.obscureText = false, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hintText,
          icon: prefixIcon,
          label: Text('$label'),
          suffixIcon: sufixIcon,
          border: OutlineInputBorder(
              gapPadding: 3,
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.black, width: 1))

          // labelText: label,
          ),
    );
  }
}
