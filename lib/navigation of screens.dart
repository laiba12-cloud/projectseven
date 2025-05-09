import 'package:flutter/material.dart';
import 'package:projectseven/navigation2.dart';
class ParentClass extends StatelessWidget {
ParentClass({super.key});
List <String> i=[
  '3',
  '5',
  '9',
  '1',
  '7',
  '2',
  '5',
  '2',
  '1',
  '7',
  '5',
  '7',
  '12',
  '4',
  '2',
  '1',
  '3',
  '5',
  '1',
  '2'
];
  List <String> names=[
    'aleezy',
    'ayesha',
    'mirhuu',
    'emaan',
    'amna',
    'farisa',
    'fariha',
    'shazra',
    'manii',
    'ayan',
    'food fusion',
    'maya cuisine',
    'saima',
    'fozia',
    'umair',
    'azka',
    'shagufta',
    'iqra',
    'aunty shamim',
    'anum'
  ];

  List <String> subtitle=[
    'whats going',
    'chalen??',
    'are u here',
    'haa g',
    'tum arahii ho',
    'naahhh',
    'shadii py jao gi??',
    'okayyy',
    'kon sa ??',
    'cake ready hy',
    'wait a minute',
    'ur order for lasagna has dispatched',
    'kesii ho',
    'hiii',
    'haa udr tum gye thy',
    'sochtii hun',
    'mera irada ni jany ka',
    'us ny fraud kiya',
    'yes am sure',
    'yess'
  ];

  List <String> images=[
    'assets/awesome.jpg',
    'assets/beutifull.jpg',
    'assets/girl.jpg',
    'assets/girl2.jpg',
    'assets/girl3.jpg',
    'assets/girl5.jpg',
    'assets/girl6.jpg',
    'assets/girl8.jpg',
    'assets/boy5.jpg',
    'assets/boy7.jpg',
    'assets/boy.jpg',
    'assets/boy2.jpg',
    'assets/pic.jpg',
    'assets/hq720.jpg',
    'assets/realpizza.jpg',
    'assets/girl5.jpg',
    'assets/girl6.jpg',
    'assets/girl.jpg',
    'assets/boy5.jpg',
    'assets/boy7.jpg'
  ];

  List <String> time=[
    '06:34am',
    '06:57am',
    '07:23am',
    '07:51am',
    '09:23am',
    '09:34am',
    '10:23am',
    '12:00pm',
    '12:12pm',
    '01:25pm',
    '02:34am',
    '02:57am',
    '03:23am',
    '04:51am',
    '05:23am',
    '05:34am',
    '06:23am',
    '07:00pm',
    '07:12pm',
    '08:25pm'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    FloatingActionButton(
      onPressed:(){
        },
      child:Icon(Icons.circle_outlined,color:Colors.purple,size:35),
    ),
    SizedBox(height:15),
    FloatingActionButton(
        onPressed:(){
        },
        child:Icon(Icons.add_box,color:Colors.green,size:25),
      ),
  ],
),
      appBar:AppBar(
        backgroundColor: Colors.black,
        title:Text('WhatsApp',style:TextStyle(
          color:Colors.green,fontWeight:FontWeight.bold,
        )),
        centerTitle: false,
        actions:[
          Icon(Icons.camera_alt,color:Colors.black,),
          SizedBox(width:15),
          Icon(Icons.more_vert),
          SizedBox(width:10),
        ],
      ),
      body:Column(
      children:[
        Expanded(
          flex:90,
          child:ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ListTile(
          onTap:(){
            Navigator.push(
            context,
            MaterialPageRoute(
            builder:(context)=>ChildClass(
          names:names[index],
          subtitle:subtitle[index],
          images:images[index],
              time:time[index],
          ),
          ),
            );
          },
            leading:CircleAvatar(radius:20,backgroundImage: AssetImage(images[index]),),
            title:Text(names[index],style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20)),
            subtitle: Text(subtitle[index],style:TextStyle(color:Colors.white,fontSize:13),),
            trailing:Column(
              children:[
                CircleAvatar(radius:15,backgroundColor: Colors.green,child:Text(i[index]),),
                Text(time[index]),
              ],
            )
        );
  }
      ),
        ),
        Expanded(
          flex:10,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Column(
                children:[
            Icon(Icons.chat_sharp,color:Colors.white,),
                  Text('Chats',style:TextStyle(
                    color:Colors.white,fontWeight:FontWeight.bold,
                  ))
    ]
        ),
              Column(
                  children:[
                    Icon(Icons.update_disabled_rounded,color:Colors.white,),
                    Text('Updates',style:TextStyle(
                      color:Colors.white,fontWeight:FontWeight.bold,
                    ))
                  ]
              ),
              Column(
                  children:[
                    Icon(Icons.person_3_outlined,color:Colors.white,),
                    Text('Communities',style:TextStyle(
                      color:Colors.white,fontWeight:FontWeight.bold,
                    ))
                  ]
              ),
              Column(
                  children:[
                    Icon(Icons.call,color:Colors.white,),
                    Text('Calls',style:TextStyle(
                      color:Colors.white,fontWeight:FontWeight.bold,
                    ))
                  ]
              ),
          ],
      ),
        ),
      ],
      ),
    );
  }
}

