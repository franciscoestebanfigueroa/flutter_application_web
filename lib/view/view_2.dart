import 'package:flutter/material.dart';
import 'package:flutter_application_web/shared/gradiente.dart';

class ViewDos extends StatelessWidget {
  const ViewDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          gradient: gradient1
        ),
        //color: Colors.blue,
      ),
    );
  }
}