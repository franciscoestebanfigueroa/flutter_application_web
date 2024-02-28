import 'package:fluro/fluro.dart';
import 'package:flutter_application_web/pages/home.dart';
import 'package:flutter_application_web/view/menu.dart';
import 'package:flutter_application_web/view/view_1.dart';
import 'package:flutter_application_web/view/view_2.dart';




final Handler handler = Handler(handlerFunc: (context, parameters) {
  return  Home(child: Menu(),view: ViewUno(),);
});


final Handler handlerDos = Handler(handlerFunc: (context, parameters) {
  return  Home(child: Menu(),view: ViewDos(),);
});




class FlutterRouter {
  
static final router = FluroRouter();

static void configuracionRouter(){
  router.define("/home", handler: handler);

  router.define("/viewuno", handler:handlerDos);
  
  
  

  router.notFoundHandler=handler;
}

}