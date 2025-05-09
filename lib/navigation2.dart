import 'package:flutter/material.dart';
class ChildClass extends StatelessWidget {
  String names;
  String subtitle;
  String images;
  String time;
  ChildClass({super.key,required this.names,required this.subtitle,required this.images,required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar:AppBar(
    leading:Icon(Icons.arrow_back,color:Colors.white),
    title:Row(children:[
    CircleAvatar(radius:20,backgroundImage: AssetImage(images),),
    Text(names),
    ],
    ),
    centerTitle: false,
    actions:[
    Icon(Icons.photo_camera_front,color:Colors.white),
    SizedBox(width:10),
    Icon(Icons.call,color:Colors.white),
    SizedBox(width:10),
    Icon(Icons.more_vert),
    SizedBox(width:5),
    ]
    ),
    body:Center(
    child:Text(names),
    ),

    );
  }
}
