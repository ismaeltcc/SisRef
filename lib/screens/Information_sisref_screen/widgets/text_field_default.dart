import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController controller;
  final bool enabled;
  final Function? validator;
  final bool obscureText;
  final TextInputType? keyboardType;

  const TextFieldDefault({
    Key? key,
    this.hintText,
    required this.labelText,
    required this.controller,
    this.obscureText = false,
    this.enabled = true,
    this.validator,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        validator: validator != null ? (text) => validator!(text) : null,
        obscureText: obscureText,
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Quicksand',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        enabled: enabled,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          errorStyle: const TextStyle(
            color: Colors.redAccent,
            fontSize: 12,
          ),
          border: defaultBorder,
        ),
      ),
    );
  }

  OutlineInputBorder get defaultBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      );
}
