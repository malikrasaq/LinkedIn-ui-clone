import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.all(4),
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive == true ? Colors.grey[600] : Colors.white,
        border: Border.all(
          color: isActive == true ? Colors.grey : Colors.grey,
        ),
      ),
    );
  }
}