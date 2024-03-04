import 'package:flutter/material.dart';

class MySinglenton {

static final MySinglenton _instancia = MySinglenton._();
static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

factory MySinglenton(){
  print("por aca instancio la clase..no puedo ver el contructor privado");
  return _instancia;
}
MySinglenton._(){
  print("constructor privado");
} //constructor privado..


Future goToNameNavigatorPancho(String path){
  return globalKey.currentState!.pushNamed(path);
}






}






