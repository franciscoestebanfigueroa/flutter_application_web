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
    GestureDetector(
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Page 1", style: TextStyle(fontSize: 20)),
      ),
      onTap: () => locator<NavigationService>().navegarTo("/viewuno"),
    ),
    GestureDetector(
      onTap: () => locator<NavigationService>().navegarTo("/viewdos"),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Page 2",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
    GestureDetector(
      onTap: () => locator<NavigationService>().navegarTo("/viewtres"),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Page 3",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
    GestureDetector(
      onTap: () => locator<NavigationService>().navegarTo("cualquiera"),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Page 4",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
  ];
}
