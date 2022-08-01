import 'package:flutter/material.dart';

class NavRouter {
  factory NavRouter() => _router;

  NavRouter._();

  static final NavRouter _router = NavRouter._();

  static NavRouter get instance => _router;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T?> pushReplacement<T extends Object>(Route<T> route) async {
    return navigatorKey.currentState!.pushReplacement(route);
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }

  Future<T?> push<T extends Object>(Route<T> route) async {
    return navigatorKey.currentState!.push(route);
  }
}
