import 'package:flutter/material.dart';
import 'package:flutter_application_web/view/menu.dart';

class Home extends StatelessWidget {
  final Widget child;
  const Home({
    super.key, 
    required this.child,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 900,
        height:900,
        color: Colors.pink,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              print(constraints.minWidth);
             return constraints.maxWidth>600
             ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              
                child  ,
                Container(
                  color: Colors.amber,
                  width: 200,
                  height: 200,

                )
            ],
          )
          :Row(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              
                child  ,
                Container(
                  color: Colors.amber,
                  width: 200,
                  height: 200,

                )
            ],
          ); 
            },
          )
        ),
      ),
    );
  }
}