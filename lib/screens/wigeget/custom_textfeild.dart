import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild(
      {super.key,
      required this.labelText,
      required this.prefixIcon,
      this.suffixxIcon});
  final String labelText;
  final Icon prefixIcon;
  final Icon? suffixxIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.grey,
        )),
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixxIcon,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        labelStyle: TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
