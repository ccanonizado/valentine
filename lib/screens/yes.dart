import 'package:flutter/material.dart';

import '../common/custom_scaffold.dart';
import '../common/custom_button.dart';
import '../common/text_header.dart';
import '../common/text_content.dart';
import '../common/gif.dart';

class Yes extends StatefulWidget {
  Yes({Key key}) : super(key: key);

  @override
  _YesState createState() => _YesState();
}

class _YesState extends State<Yes> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return CustomScaffold(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: mq.size.width,
              height: mq.size.height - 100,
              padding: const EdgeInsets.only(top: 60),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Gif(url: 'assets/gifs/kiss.gif'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: TextHeader(text: 'Yaaaay!!!'),
                    ),
                    TextContent(
                      text:
                          "See u :D\nWhat u wanna do?\nMovie? Samgyup? Idk\nYou decide!\n\nAnyway am just here\nMaybe we can sleep\nand eat... and sleep...\n\nMwa mwa!\nI love you :)",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            child: Container(
              width: mq.size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomButton(
                    text: 'back',
                    inverted: false,
                    action: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
