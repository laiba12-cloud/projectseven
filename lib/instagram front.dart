import 'package:flutter/material.dart';
class InstagramFront extends StatefulWidget {
  const InstagramFront({super.key});

  @override
  State<InstagramFront> createState() => _InstagramFrontState();
}

class _InstagramFrontState extends State<InstagramFront> {
  List images=[
    'assets/awesome.jpg',
    'assets/beutifull.jpg',
    'assets/girl.jpg',
    'assets/girl2.jpg',
    'assets/girl3.jpg',
    'assets/girl5.jpg',
    'assets/girl6.jpg',
    'assets/girl8.jpg',
    'assets/hijab.jpg',
    'assets/pictwo.jpg'
  ];
  List messages=[
    'your story',
    'zartasha',
    'amna',
    'laiba',
    'mehwish',
    'zarnab',
    'maliha',
    'ayesha',
    'mirha',
    'emaan'
  ];
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
            Icon(Icons.favorite_outline_rounded,color: Colors.white,size:30),
            SizedBox(width:20),
            Icon(Icons.messenger_rounded,color:Colors.white,size:30),
            SizedBox(width:15),
          ],
      ),
      body: Column(
        children: [
          Expanded(
            flex:20,
            child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:messages.length,
            itemBuilder:(context,index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                  [
                    SizedBox(height:5),
                    CircleAvatar(
                      radius:40,
                      backgroundColor: Colors.white,
                        child:CircleAvatar(
                          radius:36,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius:32,
                            backgroundImage: AssetImage(images[index]),
                          ),
                        ),
                    ),
                    Text('${messages[index]}',style:TextStyle(
                      color:Colors.white,
                      fontWeight:FontWeight.bold,
                    ),),
                  ]
              );
              }
          ),
          ),
          Expanded(
            flex:70,
            child:SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child:Container(
              height:500,
              width:300,
              decoration:BoxDecoration(
                  color:Colors.pink,
                  borderRadius:BorderRadius.circular(20),
                border:Border.all(width:5,color:Colors.white,),
                image: DecorationImage(image: AssetImage('assets/girl8.jpg'),
                fit:BoxFit.cover)
              )),
            ),
          ),
          Expanded(
            flex:10,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Icon(Icons.home,color:Colors.white),
                Icon(Icons.search,color:Colors.white),
                Icon(Icons.add_box,color:Colors.white),
                Icon(Icons.linked_camera_outlined,color:Colors.white),
                CircleAvatar(
                  radius:15,
                  backgroundImage: AssetImage('assets/awesome.jpg'),
                )
              ],
            )
          )
        ],
      )
    );
  }
}
