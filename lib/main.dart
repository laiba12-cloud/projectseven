import 'package:flutter/material.dart';
import 'package:projectseven/facebook%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home:FacebookScreen()
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
