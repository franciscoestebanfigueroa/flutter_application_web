import 'package:flutter/material.dart';
import 'package:flutter_application_web/shared/gradiente.dart';

class ViewTres extends StatelessWidget {
  const ViewTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          gradient: gradient2
        ),
        //color: Colors.orange,
      ),
    );
  }
}