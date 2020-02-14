import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final Function action;
  final bool inverted;

  const CustomButton({
    Key key,
    this.text,
    this.width,
    this.action,
    this.inverted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return SizedBox(
      width: mq.size.width * (width ?? 0.8),
      height: 60,
      child: RaisedButton(
        elevation: 0, // This controls the shadow below the widget
        onPressed: action,
        color: inverted ? Colors.white : Colors.red[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
          side: BorderSide(color: Colors.red[400]),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: inverted ? Colors.red[400] : Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
