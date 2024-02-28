//esta es una clase para manejar navigation por referencias de key
//esta clase la maneja un singlento get_it

import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navegarKey = GlobalKey<NavigatorState>();

  Future navegarTo(String name) {
    return navegarKey.currentState!.pushNamed(name);
  }

  void regresarTo() {
    return navegarKey.currentState!.pop();
  }
}
