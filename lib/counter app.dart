import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count=0;
  increment(){
    count++;
    setState((){});
  }
  decrement(){
    if(count<=0){
      count=0;
    }
   else {
      count--;
      setState(() {});
    }
  }
  refresh(){
    count=0;
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          FloatingActionButton(
            backgroundColor: Colors.blue.shade300,
            onPressed: (){
            increment();
          },
          child:Icon(Icons.add,color:Colors.white),),
         SizedBox(height:20),
          FloatingActionButton(
            backgroundColor: Colors.blue.shade300,
            onPressed:(){
              decrement();
    },
            child:Icon(Icons.remove,color:Colors.white,),
    ),

          SizedBox(height:20),
          FloatingActionButton(
            backgroundColor: Colors.blue.shade300,
            onPressed:(){
              refresh();
            },
            child:Icon(Icons.refresh,color:Colors.white),
          ),
    ],
          ),
      backgroundColor: Colors.lightBlueAccent,
      appBar:AppBar(
        backgroundColor: Colors.blue.shade300,
        leading:Icon(Icons.supervisor_account,color:Colors.white,),
        title:Text('Counter App',style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,)),
        centerTitle: true,
        actions:[
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width:15),
          Icon(Icons.more_vert,color:Colors.white),
        ],
      ),
      body:Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('count=$count',style:TextStyle(
            color:Colors.white,fontSize:40,fontWeight:FontWeight.bold,
          )),
          SizedBox(height:30),
          Text('Created by Laiba Umair',style:TextStyle(
            color:Colors.white,
            fontWeight:FontWeight.bold,
            fontSize:24,
          )),
        ],
      ),),
    );
  }
}
