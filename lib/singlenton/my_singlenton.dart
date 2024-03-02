import 'package:flutter/material.dart';

class MySinglenton {
  late GlobalKey<NavigatorState> _globalKey;

  MySinglenton._() {
    _globalKey = GlobalKey<NavigatorState>();
    print("creo unica instancia");
  }
  static final MySinglenton _instancia = MySinglenton._();

  static MySinglenton instancia() {
    return _instancia;
  }

  static Future superNavegatTo(String routeName) {
    return _instancia._globalKey.currentState!.pushNamed(routeName);
  }

  GlobalKey<NavigatorState> key() {
    return _instancia._globalKey;
  }
}
