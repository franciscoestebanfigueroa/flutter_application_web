import 'package:fluro/fluro.dart';
import 'package:flutter_application_web/pages/home.dart';




final Handler handler = Handler(handlerFunc: (context, parameters) {
  return Home();
}
);

class FlutterRouter {
  
static final router = FluroRouter();

static void configuracionRouter(){
  router.define("/home", handler: handler);

  router.notFoundHandler=handler;




}

}