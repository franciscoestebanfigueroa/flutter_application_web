import 'package:fluro/fluro.dart';
import 'package:flutter_application_web/pages/home.dart';

import 'package:flutter_application_web/view/view_1.dart';
import 'package:flutter_application_web/view/view_2.dart';
import 'package:flutter_application_web/view/view_3.dart';
import 'package:flutter_application_web/view/view_4.dart';
import 'package:flutter_application_web/view/view_404.dart';

final Handler handlerUno = Handler(handlerFunc: (context, parameters) {
  return  const ViewUno();
});

final Handler handlerDos = Handler(handlerFunc: (context, parameters) {
  return  const ViewDos();
});

final Handler handlerTres = Handler(handlerFunc: (context, parameters) {
  return  const ViewTres();
});



class FlutterRouter {
  static final router = FluroRouter();

  static void configuracionRouter() {
    router.define("/viewuno", handler: handlerUno,transitionType: TransitionType.fadeIn);

    router.define("/viewdos", handler: handlerDos,transitionType: TransitionType.fadeIn);

    router.define("/viewtres", handler: handlerTres,transitionType: TransitionType.fadeIn);

    router.define("/viewcuatro",handler:Handler(handlerFunc: (context, parameters) => const ViewCuatro(),),transitionType: TransitionType.fadeIn );

    router.notFoundHandler = Handler(handlerFunc: (context, parameters) {
      return const  ViewCuatroCeroCuatro();
    },);
  }
}
