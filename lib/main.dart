import 'package:flutter/material.dart';
import 'package:navigationapp/pages/page_alert.dart';
import './pages/page_snack.dart';
import './pages/page_bottom.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Color.fromARGB(255, 24, 24, 24),
        ),
    
      home: const PageBottom(title: 'Quizz'),
      debugShowCheckedModeBanner: false,
    );
  }
}
