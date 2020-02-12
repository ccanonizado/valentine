import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const TextHeader({
    Key key,
    this.text,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Nunito",
        fontWeight: FontWeight.bold,
        fontSize: size ?? 36,
        color: color ?? Colors.red[300],
        height: 0.9,
      ),
    );
  }
}
