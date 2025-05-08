import 'package:flutter/material.dart';
class WhatsAppListView extends StatefulWidget {
  const WhatsAppListView({super.key});

  @override
  State<WhatsAppListView> createState() => _WhatsAppListViewState();
}

class _WhatsAppListViewState extends State<WhatsAppListView> {
  List <int> i=[
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12
  ];
  List <String> listTitle=[
    'whats up??',
    'are u free',
    'am comingg',
    'cake ready hy ',
    'niii',
    'are you sure',
    'see these files',
    'kiya program hy kal ka',
    'btaoooo',
    'koi nayii tazzi',
    'uni awo gii?',
    'haa g'
  ];
  List <String> listName=[
    "amna",
    "ismail",
    "ayan",
    "umee",
    "hadii",
    "maniii",
    "shazii",
    "malaika",
    "farisa",
    "sabaa",
    "sofia",
    "aleezy"

  ];
  List images=[
    'assets/beutifull.jpg',
    'assets/boy.jpg',
    'assets/boy2.jpg',
    'assets/boy4.jpg',
    'assets/boy5.jpg',
    'assets/boy7.jpg',
    'assets/girl.jpg',
    'assets/girl2.jpg',
    'assets/girl3.jpg',
    'assets/girl5.jpg',
    'assets/girl8.jpg',
    'assets/hijab.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        title:Text('WhatsApp',style:TextStyle(
          color:Colors.green,
          fontWeight:FontWeight.bold,
        ),),
        centerTitle: false,
          actions:[
            Icon(Icons.search),
            SizedBox(width:15),
            Icon(Icons.more_vert),
          ],
      ),
      body: ListView.builder(
        itemCount:listName.length,
        itemBuilder: (context,i){

          return Card(
              child:ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage(images[i]),
              ),
              title:Text(listName[i]),
              subtitle: Row(
                children: [
                  Icon(Icons.check),
                  Text(listTitle[i]),
                ],
              ),
              trailing:Column(
                children: [
                  Text('3:04pm'),
                  CircleAvatar(
                      radius:10,backgroundColor: Colors.green,

                      child:Text('${i+1}',style:TextStyle(
                        color:Colors.white,
                      ))),
                ],
              ),
              )
              );
        }
      )//
    );
  }
}
