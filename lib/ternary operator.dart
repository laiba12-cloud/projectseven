import 'package:flutter/material.dart';

class TernaryClass extends StatefulWidget {
  const TernaryClass({super.key});

  @override
  State<TernaryClass> createState() => _TernaryClassState();
}

class _TernaryClassState extends State<TernaryClass> {
  bool isSelected=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child:
        Column(
          children: [
            SizedBox(height:30),
            InkWell(
              onTap:(){
              isSelected=false;
            setState(() {

            });
            },
              child: Container(
                      height:100,
                      width:100,
                      color:isSelected==true?Colors.orange:Colors.blue,
                    ),
                  ),
              SizedBox(height:20),
              isSelected?Text('button clicked',style:TextStyle(color:Colors.red)):Text('button not clicked',style:TextStyle(color:Colors.red)),
            SizedBox(height:20),
            FloatingActionButton(
              backgroundColor: Colors.orange,
                onPressed:(){
                  isSelected=true;
                  setState(() {

                  });
                },
                child:Icon(Icons.check_box,color:Colors.black,)
              ),
              SizedBox(height:20),
              FloatingActionButton(
                backgroundColor: Colors.blue,
              onPressed:(){
              isSelected=false;
              setState(() {

              });
              },
              child:Icon(Icons.cancel,color:Colors.black,),
              ),
            ],
      ),
      ),
    );

  }
}
