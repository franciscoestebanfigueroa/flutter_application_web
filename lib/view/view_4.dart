import 'package:flutter/material.dart';
import 'package:flutter_application_web/view/view_1.dart';
import 'package:flutter_application_web/view/view_2.dart';
import 'package:flutter_application_web/view/view_3.dart';

class ViewCuatro extends StatelessWidget {
  const ViewCuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          color: Colors.indigo,
          child:PageCustomView()
        ),
      ),
    );
  }
}

class PageCustomView extends StatefulWidget {
  
   PageCustomView({
    super.key,
  });

  @override
  State<PageCustomView> createState() => _PageCustomViewState();
}

class _PageCustomViewState extends State<PageCustomView> {
   
  
  
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        
        ViewUno(),
        ViewDos(),
        ViewTres(),
      ],
    );
  }
}