import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
   Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      
      print(constraints.maxWidth);
      return constraints.maxWidth>600
                ?Container(
                  color: Colors.indigo,
                  child: Row(   
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,       
                    
                  children: _listado(),
                       ),
                )
                :Container(
                  color: Colors.green,
                  child: Column(     
                    mainAxisAlignment:MainAxisAlignment.start,         
                  children: _listado(),
                  ),
                );
    });
               
               }

}



List<Widget>_listado (){

return [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("data 1",style: TextStyle(fontSize: 20)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("data 2",style: TextStyle(fontSize: 20),),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("data 3",style: TextStyle(fontSize: 20),),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("data 4",style: TextStyle(fontSize: 20),),
                ),
              ];

}