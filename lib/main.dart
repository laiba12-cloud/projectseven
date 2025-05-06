import 'package:flutter/material.dart';
import 'package:projectseven/Whatsappchat.dart';
import 'package:projectseven/add%20function.dart';
import 'package:projectseven/division%20function.dart';
import 'package:projectseven/facebook%20screen.dart';
import 'package:projectseven/list_view_builder.dart';
import 'package:projectseven/multiply%20function.dart';
import 'package:projectseven/subtract%20function.dart';
import 'package:projectseven/swap%20without%203rd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home:ListBuilder()//SwapWithoutFunction()
      //DivisionFunction()
      //MultiplyFunction()
      //SubtractFunction()
      //AddFunctionClass()
      //WhatsAppUpdateScreen()
      //FacebookScreen()
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
