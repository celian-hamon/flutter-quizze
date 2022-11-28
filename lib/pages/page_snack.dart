import 'package:flutter/material.dart';
import 'package:navigationapp/widget/snack.dart';

class PageSnack extends StatelessWidget {
  const PageSnack({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text(this.title)),
      body: const Snack(),
    );
  }
}