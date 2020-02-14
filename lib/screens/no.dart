import 'package:flutter/material.dart';

import '../common/custom_scaffold.dart';
import '../common/custom_button.dart';
import '../common/text_header.dart';
import '../common/text_content.dart';
import '../common/gif.dart';

import '../constants/assets.dart';
import '../constants/text.dart';

class No extends StatefulWidget {
  No({Key key}) : super(key: key);

  @override
  _NoState createState() => _NoState();
}

class _NoState extends State<No> {
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
                    Gif(url: sad_gif),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: TextHeader(text: no_header),
                    ),
                    TextContent(text: no_content),
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
                    text: back_button,
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
