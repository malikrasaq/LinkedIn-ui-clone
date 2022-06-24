import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppNavigator {
  AppNavigator({this.context});
  BuildContext? context;

  Future nextPage({Widget? screen}) {
    return Navigator.push(
      context!, CupertinoPageRoute(builder: ((context) => screen!)));
  }

  void nextPageOnly({Widget? screen}) {
    Navigator.pushAndRemoveUntil(context!, MaterialPageRoute(builder: (context) => screen!), (route) => false);
  }
}