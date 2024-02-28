import 'package:fluro/fluro.dart';
import 'package:flutter_application_web/pages/home.dart';

import 'package:flutter_application_web/view/view_1.dart';
import 'package:flutter_application_web/view/view_2.dart';
import 'package:flutter_application_web/view/view_4.dart';

final Handler handlerUno = Handler(handlerFunc: (context, parameters) {
  return  ViewUno();
});

final Handler handlerDos = Handler(handlerFunc: (context, parameters) {
  return  ViewDos();
});



class FlutterRouter {
  static final router = FluroRouter();

  static void configuracionRouter() {
    router.define("/viewuno", handler: handlerUno);
    router.define("/viewdos", handler: handlerDos);

    router.notFoundHandler = Handler(handlerFunc: (context, parameters) {
      return Home(child: ViewCuatro());
    },);
  }
}
