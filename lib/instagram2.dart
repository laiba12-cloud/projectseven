import 'package:flutter/material.dart';
class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {

  List <String> userName=[
    'Abc',// 0 <userName[i]
    'Abc1',//1
    'Abc2',//2
    'Abc3',//3
    'Abc4',
    'Abc5',
    'Abc',
    'Abc1',
    'Abc2',
    'Abc3',
    'Abc4',
    'Abc5',
  ];
  List <String>subTitle=[
    'text-1',
    'text-2',
    'text-3',
    'text-4',
    'text-5',
    'text-6',
    'text-1',
    'text-2',
    'text-3',
    'text-4',
    'text-5',
    'text-6',
  ];
  List<String>time=[
    '09:1',
    '09:2',
    '09:3',
    '09:4',
    '09:5',
    '09:6',
    '09:1',
    '09:2',
    '09:3',
    '09:4',
    '09:5',
    '09:6',
  ];
  List<String> images=[
    'assets/boy2.jpg',
    'assets/boy4.jpg',
    'assets/boy5.jpg',
    'assets/boy7.jpg',
    'assets/boy2.jpg',
    'assets/boy4.jpg',
    'assets/boy5.jpg',
    'assets/boy7.jpg',
    'assets/boy2.jpg',
    'assets/boy4.jpg',
    'assets/boy5.jpg',
    'assets/boy7.jpg',
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(
  backgroundColor: Colors.black,
  title:Text('Instagram',style:TextStyle(
    color:Colors.white,
    fontWeight:FontWeight.bold,
  )),
  centerTitle: false,
  actions:[
    Icon(Icons.favorite_border,color:Colors.white,),
    SizedBox(width:25),
    Icon(Icons.messenger_rounded,color:Colors.white,),
    SizedBox(width:10),
  ],
),
    backgroundColor: Colors.black,
    body: ListView.builder(

    itemCount: userName.length,
    itemBuilder: (context,i){
    return Row(
      children:[
Column(
  children:[
    CircleAvatar(
      backgroundColor: Colors.white,
      child:CircleAvatar(radius:30,
    backgroundColor: Colors.black,
    child: CircleAvatar(
      radius:20,
      backgroundImage: AssetImage(images[i]),
    ),),),
    SizedBox(height:8),
    Text("$userName[i]",style:TextStyle(
      color:Colors.white,
    ))
  ]
),
      ]
    );
    },
    ),

    );
  }
}
