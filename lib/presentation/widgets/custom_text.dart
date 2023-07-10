import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({required this.content, required this.size, super.key});
 final  String content;
final  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: size,
        color: Colors.white,
        shadows: const [
          Shadow(
            blurRadius: 15.0,
            color: Color.fromARGB(150, 0, 0, 0),
            offset: Offset(3.0, 3.0),
          ),
        ],
      ),
    );
  }
}