import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final TextEditingController labelController;
  final bool pass;
  final TextInputType type;
  const TextInputField({
    Key? key,
    required this.label,
    required this.labelController,
    this.pass = false,
    this.type = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.grey[400]),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
      ),
      keyboardType: type,
      controller: labelController,
      obscureText: pass,
      cursorColor: Colors.green,
    );
  }
}
