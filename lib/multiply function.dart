import 'package:flutter/material.dart';
class MultiplyFunction extends StatefulWidget {
  const MultiplyFunction({super.key});

  @override
  State<MultiplyFunction> createState() => _MultiplyFunctionState();
}

int multiply=0;
void mul(){
  int a=4;
  int b=2;
  int mul=a*b;
  multiply=a*b;
  print("mul=$mul");
}

class _MultiplyFunctionState extends State<MultiplyFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.yellow,
    appBar:AppBar(
    backgroundColor: Colors.purple,
    leading:Icon(Icons.menu),
    title:Text("multiply function",style:TextStyle(
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
    mul();
    print("function calling");
    setState((){});

    },
    child:Text(
      '*',
    ),
    ),
    ),
    SizedBox(height:20),
    Text('multiply=$multiply'),
    ]
    )
    ),




    );
  }
}
