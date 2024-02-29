import 'package:flutter/material.dart';
import 'package:flutter_application_web/locator.dart';
import 'package:flutter_application_web/nevigator_service.dart';
import 'package:flutter_application_web/pages/home.dart';
import 'package:flutter_application_web/router/handler_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //setupLocator(); //crea una unica instancia para que no se dupliquen los key
    FlutterRouter.configuracionRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/viewdos",
      onGenerateRoute: FlutterRouter.router.generator,
      // navigatorKey: locator<NavigationService>()
      //     .navegarKey, //busca una instancia de tipo navigationservive
      builder: (context, child) {
        return Home(child: child ?? Container());
      },
    );
  }
}
