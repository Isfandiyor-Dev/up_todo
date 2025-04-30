import 'package:flutter/material.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

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
      style: context.textTheme.bodyLarge?.copyWith(
        letterSpacing: 0.1,
      ),
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: const OutlineInputBorder(),
        hintStyle: context.textTheme.bodyLarge?.copyWith(
          color: Color(0xffAFAFAF),
          letterSpacing: 0.2,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.colorScheme.outlineVariant,
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
