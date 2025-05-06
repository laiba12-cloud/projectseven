import 'package:flutter/material.dart';

class AddFunctionClass extends StatefulWidget {
  const AddFunctionClass({super.key});

  @override
  State<AddFunctionClass> createState() => _AddFunctionClassState();
}
int sum=0;
void add(){
  int a=2;
  int b=4;
  int add=a+b;
  sum=a+b;
  print("add=$add");
}

class _AddFunctionClassState extends State<AddFunctionClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar:AppBar(
        backgroundColor: Colors.yellow,
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
              add();
              print("function calling");
              setState((){});

            },
              child:Icon(Icons.add),
            ),
          ),
          SizedBox(height:20),
          Text('sum=$sum'),
        ]
      )
      ),
    );
  }
}

