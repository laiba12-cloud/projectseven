import 'package:flutter/material.dart';
class SubtractFunction extends StatefulWidget {
  const SubtractFunction({super.key});

  @override
  State<SubtractFunction> createState() => _SubtractFunctionState();
}

int minus=0;
void sub(){
  int a=4;
  int b=2;
  int sub=a-b;
  minus=a-b;
  print("sub=$sub");
}

class _SubtractFunctionState extends State<SubtractFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.yellow,
    appBar:AppBar(
    backgroundColor: Colors.purple,
    leading:Icon(Icons.menu),
    title:Text("add function",style:TextStyle(
    color:Colors.black,
    fontWeight:FontWeight.bold,
    fontSize:15,
    )),
    actions:[
    Icon(Icons.search),
    SizedBox(width:20),
    Icon(Icons.more_vert),
    ],
    ),
    body:Center(child:Column(
    children:[
    SizedBox(height:30),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: FloatingActionButton(onPressed:
    (){
    sub();
    print("function calling");
    setState((){});

    },
    child:Icon(Icons.remove),
    ),
    ),
    SizedBox(height:20),
    Text('minus=$minus'),
    ]
    )
    ),



    );
  }
}
