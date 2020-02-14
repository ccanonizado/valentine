import 'package:flutter/material.dart';

import '../common/custom_scaffold.dart';
import '../common/custom_button.dart';
import '../common/text_header.dart';
import '../common/text_content.dart';
import '../common/gif.dart';

import '../constants/assets.dart';
import '../constants/text.dart';

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
                    Gif(url: kiss_gif),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: TextHeader(text: yes_header),
                    ),
                    TextContent(text: yes_content),
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
