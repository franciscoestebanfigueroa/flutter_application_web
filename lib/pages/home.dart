import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
//el kisweb me dice si estoy en web me sirve para cambiar trasnsicion en movil o web

class Home extends StatelessWidget {
  final Widget child;
  final Widget view;
  const Home({
    super.key, 
    required this.child, required this.view,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height:double.infinity,
        color: Colors.pink,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              print(constraints.minWidth);
             return constraints.maxWidth<600
             ? Column(
                      
            children: [
              
                child  ,
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: view,
                    
                
                  ),
                )
            ],
          )
          :Row(
                       
            children: [
              
                child  ,
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
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