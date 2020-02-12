import 'package:flutter/material.dart';

import '../common/custom_scaffold.dart';
import '../common/custom_button.dart';
import '../common/text_header.dart';
import '../common/text_content.dart';
import '../common/gif.dart';

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
                    Gif(url: 'assets/gifs/sad.gif'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: TextHeader(text: 'Whyyy????'),
                    ),
                    TextContent(
                      text:
                          "U dun like me??\nI dun accept NO!\n*insert more fragile masculinity*\nGRRRRRRRR\n\n.....\n\nJUST KIDDING!\nIt's oke, I know that -\nNO means NO\nI still luv u",
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
