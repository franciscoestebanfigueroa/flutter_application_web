import 'package:flutter/material.dart';
import 'package:flutter_application_web/view/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
              Menu()  
          ],
        ),
        color: Colors.pink,
      ),
    );
  }
}