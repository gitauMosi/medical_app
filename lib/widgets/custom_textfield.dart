import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatefulWidget {
  CustomTextfield(
      {super.key,
      required this.label,
      required this.controller,
      required this.obscureText});
  String label;
  TextEditingController controller;
  bool obscureText;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(111, 195, 195, 195),
          filled: true,
          hintText: widget.label,
          suffixIcon: widget.obscureText == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child:  Icon(
                    isVisible ? Icons.visibility_off : Icons.visibility,
                  ))
              : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none)),
    );
  }
}
