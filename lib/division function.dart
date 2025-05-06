import 'package:flutter/material.dart';
class DivisionFunction extends StatefulWidget {
  const DivisionFunction({super.key});

  @override
  State<DivisionFunction> createState() => _DivisionFunctionState();
}

double division=0.0;
void div(){
  double a=4;
  double b=2;
  double div=a*b;
  division=a/b;
  print("division=$division");
}

class _DivisionFunctionState extends State<DivisionFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: Colors.yellow,
    appBar:AppBar(
    backgroundColor: Colors.purple,
    leading:Icon(Icons.menu),
    title:Text("divide function",style:TextStyle(
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
    div();
    print("function calling");
    setState((){});

    },
    child:Text(
    '/',
    ),
    ),
    ),
    SizedBox(height:20),
    Text('division=$division'),
    ]
    )
    ),

    );
  }
}
