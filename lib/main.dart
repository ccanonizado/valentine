import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/no.dart';
import './screens/yes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => Home(),
            );
          case '/no':
            return MaterialPageRoute(
              builder: (_) => No(),
            );
          case '/yes':
            return MaterialPageRoute(
              builder: (_) => Yes(),
            );
          default:
            return null;
        }
      },
      title: 'Hi Beili',
      theme: ThemeData(fontFamily: "OpenSans"),
    );
  }
}
