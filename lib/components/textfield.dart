
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String text;


  const CustomField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey[700],
      cursorHeight: 22.0,
      decoration: InputDecoration(
        border:  const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        labelText: text,
        labelStyle:  TextStyle(
          fontSize: 20.0,
          color: Colors.grey[700],
        ),
        fillColor: Colors.black,
      ),
    );
  }
}