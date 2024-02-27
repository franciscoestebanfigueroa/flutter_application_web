

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      child: LayoutBuilder(
             builder: (context, constraints) {
            print(constraints.maxWidth);
            if(constraints.minWidth<600){
              return  const Row(
            children: [
              Text("data 1"),
              Text("data 2"),
              Text("data 3"),
              Text("data 4"),
            ],
          );
      
            }
            else{
              return  const Column(
            children: [
              Text("data 10"),
              Text("data 20"),
              Text("data 30"),
              Text("data 40"),
            ],
          );
            }
          },
        ),
      ),
    );
  }
}