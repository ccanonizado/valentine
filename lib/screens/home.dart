import 'package:flutter/material.dart';

import '../common/custom_scaffold.dart';
import '../common/custom_button.dart';
import '../common/text_header.dart';
import '../common/text_content.dart';
import '../common/gif.dart';

import '../constants/assets.dart';
import '../constants/text.dart';

import '../utils/is_portrait.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // This is similar to setTimeout((){}) in JavaScript
    Future.delayed(
      Duration(milliseconds: 2000),
      () => setState(() {
        _visible = true; // This triggers the opacity animation below
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return CustomScaffold(
      child: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: mq.size.width,
                height: mq.size.height - (isPortrait(context) ? 180 : 100),
                padding: const EdgeInsets.only(top: 100),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      isPortrait(context)
                          ? Gif(url: hearts_gif)
                          : Container(height: 0),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 30),
                        child: TextHeader(text: home_header),
                      ),
                      TextContent(text: home_content),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 24,
              child: Container(
                width: mq.size.width,
                child: isPortrait(context)
                    ? portraitButtons(context)
                    : landscapeButtons(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column portraitButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CustomButton(
          text: yes_button,
          inverted: false,
          action: () => Navigator.pushNamed(context, '/yes'),
        ),
        SizedBox(height: 12),
        CustomButton(
          text: no_button,
          inverted: true,
          action: () => Navigator.pushNamed(context, '/no'),
        ),
      ],
    );
  }

  Row landscapeButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CustomButton(
          text: no_button,
          width: 0.45,
          inverted: true,
          action: () => Navigator.pushNamed(context, '/no'),
        ),
        SizedBox(width: 12),
        CustomButton(
          text: yes_button,
          width: 0.45,
          inverted: false,
          action: () => Navigator.pushNamed(context, '/yes'),
        ),
      ],
    );
  }
}
