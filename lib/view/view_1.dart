import 'package:flutter/material.dart';
import 'package:flutter_application_web/shared/gradiente.dart';

class ViewUno extends StatelessWidget {
  const ViewUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          gradient: gradient0
        ),
        //color: Colors.grey,
      ),
    );
  }
}
