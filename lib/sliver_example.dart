import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("My App Bar"),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(color: Colors.teal),
            ),
            backgroundColor: Colors.yellow,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) => ListTile(
                leading: Text(index.toString()),
                title: Text("Hosain"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
