import 'package:flutter/material.dart';

import '../utils/is_portrait.dart';

class Gif extends StatefulWidget {
  final String url;

  Gif({Key key, this.url}) : super(key: key);

  @override
  _GifState createState() => _GifState();
}

class _GifState extends State<Gif> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Image(
      image: AssetImage(widget.url),
      height: mq.size.height * (isPortrait(context) ? 0.3 : 0.45),
    );
  }
}
