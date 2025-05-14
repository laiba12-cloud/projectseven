

import 'package:flutter/material.dart';
class TernaryMultiple extends StatefulWidget {
  const TernaryMultiple({super.key});

  @override
  State<TernaryMultiple> createState() => _TernaryMultipleState();
}

class _TernaryMultipleState extends State<TernaryMultiple> {
  int select=0;
  bool isSelected=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body:
      Center
        (
        child:
        Column
          (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            FloatingActionButton
              (
                backgroundColor: isSelected?Colors.orange:Colors.white,
                onPressed:
                    ()
                {
                  if(isSelected==true)
                    {

                    }
                  else
                    {

                    }
//              isSelected==true?isSelected=false:isSelected=true;
              setState((){});
            },
        ),
        Text(isSelected?'selected':'Unselected',
            style:
            TextStyle
              (

              color:isSelected?Colors.orange:Colors.black,
              fontSize:isSelected?20:40,
            ),
        ),
            Divider(),
            FloatingActionButton
              (
              backgroundColor: select==0?Colors.orange:Colors.white,
              onPressed:()
              {
              select = 0;
              setState(() {});
            },
            ),
            FloatingActionButton
              (
                backgroundColor: select==1?Colors.orange:Colors.white,
                onPressed: ()
                {
              select=1;
              setState(() {});
            }
            ),
            FloatingActionButton
              (
                backgroundColor: select==2?Colors.orange:Colors.white,
                onPressed: ()
                {
              select=2;
              setState((){});
            }
            ),
            InkWell(
              onTap:()
              {

              },
              child:Container
                (
                height:40,
                width:150,
                color:Colors.orange,
                child:Center(child:Text('data'),),
              )
            )
          ]
        )
      )
    );
  }
}
