import 'package:flutter/material.dart';
class SwapWithoutFunction extends StatefulWidget {
  const SwapWithoutFunction({super.key});

  @override
  State<SwapWithoutFunction> createState() => _SwapWithoutFunctionState();
}
int x=0;
int y=0;

void swapwithout(){
  int a=4;
  int b=5;
a=a+b;
b=a-b;
a=a-b;
  print("after swapping value of a=$a");
  print("after swapping value of b=$b");
x=a;
y=b;

}

class _SwapWithoutFunctionState extends State<SwapWithoutFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
appBar: AppBar(
  backgroundColor: Colors.pink,
  leading:Text('swap function without 3rd variable'),
  actions: [
    Icon(Icons.search),
    SizedBox(width:10),
    Icon(Icons.more_vert),
  ],
  centerTitle: false,
),

    body:Center(
    child:Column(
    children:[
    SizedBox(height:20),
    FloatingActionButton(onPressed: (){
    swapwithout();
    print("function is calling");
    },
    child:Text('swap'),
    ),
      Column(
        children: [
          Text("swap without 3rd variable ",),
          SizedBox(height:15),
          Text('value of a=$x',),
          SizedBox(height:15),
          Text('value of b=$y',),
        ],
      ),
    ],
    ),
    )


    );
  }
}
