import 'package:fluro/fluro.dart';
import 'package:flutter_application_web/pages/home.dart';
import 'package:flutter_application_web/view/menu.dart';




final Handler handler = Handler(handlerFunc: (context, parameters) {
  return Home();
});

final Handler handlermenu = Handler(handlerFunc: (context, parameters) {
  return Menu();
});

class FlutterRouter {
  
static final router = FluroRouter();

static void configuracionRouter(){
  router.define("/home", handler: handler);

  router.define("/menu", handler: handlermenu);


  router.notFoundHandler=handler;
}

}