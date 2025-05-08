import 'package:flutter/material.dart';
class InstagramFront extends StatefulWidget {
  const InstagramFront({super.key});

  @override
  State<InstagramFront> createState() => _InstagramFrontState();
}

class _InstagramFrontState extends State<InstagramFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
       title:Text('Instagram',style:TextStyle(
         color:Colors.white,
         fontWeight:FontWeight.bold,
         fontSize:20,
       )),
        centerTitle: false,
          actions:[
            Icon(Icons.favorite_outline_rounded,color: Colors.white,),
            SizedBox(width:15),
            Icon(Icons.messenger_rounded,color:Colors.white,),
          ],
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListView.builder(
            itemCount:10,
            itemBuilder:(context,index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                  [
                    CircleAvatar(
                      radius:30,
                      backgroundColor: Colors.white,
                        child:CircleAvatar(
                          radius:25,
                          child:CircleAvatar(
                            radius:20,
                            backgroundImage: AssetImage('assets/awesome.jpg'),
                          ),
                        ),
                    ),
                    Spacer(),
                    Text('Your Story',style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.bold,
                    ),),
                  ]
              );
              }
          ),
        ],
      )
    );
  }
}
