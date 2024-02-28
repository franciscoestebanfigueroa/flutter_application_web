import 'package:flutter/material.dart';

class ViewCuatro extends StatelessWidget {
  const ViewCuatro({super.key});

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