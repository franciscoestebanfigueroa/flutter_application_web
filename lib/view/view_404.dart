import 'package:flutter/material.dart';

class ViewCuatroCeroCuatro extends StatelessWidget {
  const ViewCuatroCeroCuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          //color: Colors.indigo,
          child: const Text("404",style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}