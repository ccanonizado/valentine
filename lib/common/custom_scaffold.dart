import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;

  const CustomScaffold({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: Container(
          width: mq.size.width,
          height: mq.size.height,
          child: child,
        ),
      ),
    );
  }
}

// This removes the scroll grow
class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
