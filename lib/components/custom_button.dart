import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? textcolor;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.textcolor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: color,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
            MediaQuery.of(context).size.height * 0.07),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.grey),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textcolor, fontWeight: FontWeight.w500, fontSize: 20),
      ),
    );
  }
}
