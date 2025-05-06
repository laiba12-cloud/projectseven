import 'package:flutter/material.dart';
class SwapFunctionClass extends StatefulWidget {
  const SwapFunctionClass({super.key});

  @override
  State<SwapFunctionClass> createState() => _SwapFunctionClassState();
}
int empty=0;
void swap(){
  int a=4;
  int b=5;
  empty=a;
  a=b;
  b=empty;
  print("after swapping value of a=$a");
  print("after swapping value of b=$b");


}

class _SwapFunctionClassState extends State<SwapFunctionClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          children:[
            SizedBox(height:20),
            FloatingActionButton(onPressed: (){
              swap();
              print("function is calling");
            },
              child:Text("swap",),
            ),
          ],
        ),
      )
    );
  }
}
