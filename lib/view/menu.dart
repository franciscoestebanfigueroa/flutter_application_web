import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_web/locator.dart';
import 'package:flutter_application_web/nevigator_service.dart';
import 'package:flutter_application_web/router/handler_router.dart';
import 'package:flutter_application_web/singlenton/my_singlenton.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print("me dibujo");
      return constraints.maxWidth < 600
          ? Container(
              //color: Colors.indigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _listado(context),
              ),
            )
          : Container(
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _listado(context),
              ),
            );
    });
  }
}

List<Widget> _listado(BuildContext context) {
  return [
    Botones(
      context: context,
      nameButtom: "Page 1",
      path: "/viewuno",
    ),
    Botones(
      context: context,
      nameButtom: "Page 2",
      path: "/viewdos",
    ),
    Botones(
      context: context,
      nameButtom: "Page 3",
      path: "/viewtres",
    ),
    Botones(
      context: context,
      nameButtom: "Page 4",
      path: "/viewcuatro",
    ),
  ];
}

class Botones extends StatelessWidget {
  final String nameButtom;
  final String path;
  BuildContext context;
  //Function function;

  Botones({
    super.key,
    required this.nameButtom,
    required this.path,
    required this.context,
    //  required this.function
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(nameButtom, style: const TextStyle(fontSize: 20)),
        ),
        // onTap: () => locator<NavigationService>().navegarTo(path),
        //onTap: () => FlutterRouter.router.navigateTo(context, path),
        //onTap: () => FlutterRouter.router.navigateTo(context, path),
        onTap: () => MySinglenton.superNavegatTo(path));
  }
}
