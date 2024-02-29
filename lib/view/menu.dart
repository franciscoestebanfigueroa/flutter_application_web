import 'package:flutter/material.dart';
import 'package:flutter_application_web/locator.dart';
import 'package:flutter_application_web/nevigator_service.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
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
      nameButtom: "Page 1",
      path: "/viewuno",      
    ),
    Botones(
      nameButtom: "Page 2",
      path: "/viewdos",      
    ),
    Botones(
      nameButtom: "Page 3",
      path: "/viewtres",      
    ),
    Botones(
      nameButtom: "Page 4",
      path: "/viewcuatro",      
    ),
  ];
}

class Botones extends StatelessWidget {
  final String nameButtom;
  final String path;
  //Function function;

   Botones({
    super.key,
    required this.nameButtom,
    required this.path,
  //  required this.function
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(nameButtom, style: const TextStyle(fontSize: 20)),
      ),
      onTap: () => locator<NavigationService>().navegarTo(path),
    );
  }
}
