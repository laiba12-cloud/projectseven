import 'package:flutter/material.dart';
class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          Row(
            children:[
              SizedBox(height:200),
              Text(
                'helloooo'
              ),
              SizedBox(width:100),
              CircleAvatar(
                radius:30,
                backgroundImage: AssetImage('assets/awesome.jpg'),
              ),
              Text('byeee',),
            ],
          ),
        ],
      ),
    );
  }
}
