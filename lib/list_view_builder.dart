import 'package:flutter/material.dart';

class ListBuilder extends StatefulWidget {
  const ListBuilder({super.key});

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  // static data base
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
      backgroundColor: Colors.white,
      body: ListView.builder(

        itemCount: userName.length,
        itemBuilder: (context,i){
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(images[i]),),
            // for(int i=0;i<=11;i++){cout<<ar[i]}
            title: Text('${userName[i]}'),
            subtitle: Text('${subTitle[i]}'),
            trailing: Text(time[i]),
          );
        },
      ),
    );
  }
}
