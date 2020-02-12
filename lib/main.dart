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
            return NoAnimationMaterialPageRoute(
              builder: (_) => Home(),
            );
          case '/no':
            return MaterialPageRoute(
              builder: (_) => No(),
            );
          case '/yes':
            return NoAnimationMaterialPageRoute(
              builder: (_) => Yes(),
            );
          default:
            return null;
        }
      },
      title: 'Hi Beili',
    );
  }
}

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          maintainState: maintainState,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
