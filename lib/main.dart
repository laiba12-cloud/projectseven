import 'package:flutter/material.dart';
import 'package:projectseven/Whatsappchat.dart';
import 'package:projectseven/add%20function.dart';
import 'package:projectseven/counter%20app.dart';
import 'package:projectseven/division%20function.dart';
import 'package:projectseven/facebook%20screen.dart';
import 'package:projectseven/instagram%20front.dart';
import 'package:projectseven/instagram2.dart';
import 'package:projectseven/list_view_builder.dart';
import 'package:projectseven/multiple%20ternary%20operator.dart';
import 'package:projectseven/multiply%20function.dart';
import 'package:projectseven/navigation%20of%20screens.dart';
import 'package:projectseven/splash%20screen.dart';
import 'package:projectseven/subtract%20function.dart';
import 'package:projectseven/swap%20without%203rd.dart';
import 'package:projectseven/ternary%20operator.dart';
import 'package:projectseven/whatsapp%20by%20listviewbuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home:TernaryMultiple()
      //TernaryClass()
      //SplashScreen()
  //ParentClass()
      //InstagramFront()
      //ListClass()
      //InstagramFront()
      //WhatsAppListView()
      //InstagramScreen()
      //CounterApp()
      //ListBuilder()//SwapWithoutFunction()
      //DivisionFunction()
      //MultiplyFunction()
      //SubtractFunction()
      //AddFunctionClass()
      //WhatsAppUpdateScreen()
      //FacebookScreen()
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




class ChatsModel {
  String ? name;
  String ?subtitle;
  String ? time;
  String ? images;
  ChatsModel
  ({required this.name,
    required this.subtitle,
    required this.time,
  required this.images});
}

class ListClass extends StatefulWidget{
const ListClass({super.key});

  @override
  State<ListClass> createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  List <ChatsModel> chats=[
    ChatsModel(name:'ayesha',subtitle:"how r u",images:'assets/awesome.jpg',time:'12:03pm'),
    ChatsModel(name:'shazra',subtitle:"whts up",images:'assets/girl.jpg',time:'12:00pm'),
    ChatsModel(name:'aleezy',subtitle:"am coming",images:'assets/girl2.jpg',time:'11:03am'),
    ChatsModel(name:'hamna',subtitle:"ur cake is ready",images:'assets/girl3.jpg',time:'10:27am'),
    ChatsModel(name:'aleena',subtitle:"bataooo",images:'assets/girl5.jpg',time:'09:03am'),
    ChatsModel(name:'fatima',subtitle:"am still waiting",images:'assets/girl6.jpg',time:'08:55am'),
    ChatsModel(name:'ayan',subtitle:"okay bye",images:'assets/boy7.jpg',time:'07:33am'),
    ChatsModel(name:'manii',subtitle:"nooo",images:'assets/boy4.jpg',time:'06:03am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        title:Text('Model Class',style:TextStyle(
          color:Colors.white,
          fontWeight:FontWeight.bold,
        ),),
        centerTitle: true,
        actions:[
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width:15),
          Icon(Icons.more_vert,color: Colors.white),
        ],
      ),
      body:ListView.builder(
        itemCount:chats.length ,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading:CircleAvatar(radius:20,backgroundImage: AssetImage(chats[index].images.toString())),
              title:Text(chats[index].name.toString()),
              subtitle:Text(chats[index].subtitle.toString()),
              trailing:Text(chats[index].time.toString()),
            ),
          );
        }
      )
    );
  }
}
