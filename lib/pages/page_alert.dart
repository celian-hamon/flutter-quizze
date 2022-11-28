import 'package:flutter/material.dart';
import 'package:navigationapp/widget/alerte.dart';

class PageAlert extends StatelessWidget {
  const PageAlert({Key? key, required this.title}) : super(key: key);
  final String title;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text(this.title)),
      body:  Alerte(title: 'OH NAN'),
      backgroundColor: Color.fromARGB(255, 24, 24, 24)
    );
  }
}

