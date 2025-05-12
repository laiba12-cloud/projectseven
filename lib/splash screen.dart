import 'package:flutter/material.dart';
import 'package:projectseven/instagram%20front.dart';
import 'package:projectseven/navigation%20of%20screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds:5),(){
      Navigator.push(
        context, MaterialPageRoute(
          builder:(context) =>//ParentClass()
        InstagramFront()
      )
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(child://Image.asset('assets/whatsapp.png',height:80),
        Image.asset('assets/instagram.png',height:80)
      ),
    );
  }
}
