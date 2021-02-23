import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'router_constants.dart';

///[AppRouter] is used to generateRoute. Send as an arg for MaterialApp as onGenerateRoute callback
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainRoute:
        //return MaterialPageRoute(builder: (_) => MainView());
    }
  }
}
