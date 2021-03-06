import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/Userpage.dart';

final routes = {
  '/userpage': (context, {arguments}) => UserPage(arguments: arguments),

};

//固定写法，理解不了就记住。
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
