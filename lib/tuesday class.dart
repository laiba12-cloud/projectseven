import "package:flutter/material.dart";
class ParentClass extends StatefulWidget {
  ParentClass({super.key});

  List<String> name = [
    'abc-1',
    'abc-2',
    'abc-3',
    'abc-4',
    'abc-5',
    'abc-1',
    'abc-2',
    'abc-3',
    'abc-4',
    'abc-5',
    'abc-1',
    'abc-2',
    'abc-3',
    'abc-4',
    'abc-5',
  ];
  List<String> subtitle = [
    'abc-1-sub',
    'abc-2-sub',
    'abc-3-sub',
    'abc-4-sub',
    'abc-5-sub',
    'abc-1-sub',
    'abc-2-sub',
    'abc-3-sub',
    'abc-4-sub',
    'abc-5-sub',
    'abc-1-sub',
    'abc-2-sub',
    'abc-3-sub',
    'abc-4-sub',
    'abc-5-sub',
  ];

  @override
  State<ParentClass> createState() => _ParentClassState();
}

class _ParentClassState extends State<ParentClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    class ParentClass extends StatelessWidget {
    ParentClass({super.key});
    @override
    Widget build(BuildContext context) {
    return Scaffold(
    // body, floating, background, appbar
    floatingActionButton: FloatingActionButton(
    onPressed: () {},
    ),
    body: ListView.builder(
    itemCount: name.length,
    itemBuilder: (context, index) {
    return ListTile(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => ChildClass(
    name: name[index],
    subTitle: subtitle[index],
    ),
    ));
    },
    leading: CircleAvatar(),
    title: Text(name[index]),
    subtitle: Text(subtitle[index]),
    );
    }),
    );
    }
    }

    class ChildClass extends StatelessWidget {
    String name;
    String subTitle;
    ChildClass({super.key, required this.name, required this.subTitle});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text(subTitle),
    ),
    body: Center(
    child: Text(name),
    ),

    );
  }
}
