import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final bool enabled;
  const TextFieldInput({super.key,
    this.isPass = false,
    required this.textInputType,
    required this.hintText,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 0.5),
      borderRadius: BorderRadius.circular(10),
    );
    return TextField(
      cursorColor: Colors.white,
      enabled: enabled,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[600]
          ),
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8)
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
