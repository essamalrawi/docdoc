import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case ChatRoomView.routeName:
    //   return CupertinoPageRoute(builder: (context) => ChatRoomView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
