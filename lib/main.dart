import 'package:flutter/material.dart';
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
    FlutterRouter.configuracionRouter();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: "/home",
    onGenerateRoute: (settings) => FlutterRouter.router.generator(settings),
    );
  }
}