import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const TextContent({
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
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: size ?? 20,
        color: color ?? Colors.black54,
      ),
    );
  }
}
