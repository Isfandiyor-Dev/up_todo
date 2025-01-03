import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final int maxLines;
  final String? Function(String?)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.controller,
    this.maxLines = 1,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardAppearance: Brightness.dark,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      style: const TextStyle(
        fontFamily: 'Lato',
        fontSize: 16,
        letterSpacing: 0.1,
      ),
      cursorColor: Colors.white,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: const OutlineInputBorder(),
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Color(0xffAFAFAF),
          letterSpacing: 0.2,
          fontFamily: 'Lato',
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff979797),
            width: 0.8,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
