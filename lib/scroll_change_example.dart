import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController scrollController;

  Color backgroundColor = Colors.blueGrey;

  @override
  void initState() {
    scrollController = ScrollController();

    scrollController.addListener(() {
      print(scrollController.position.pixels);
      // if (scrollController.position.atEdge) {
      //   if (scrollController.position.pixels == 0) {
      //     setState(() {
      //       backgroundColor = Colors.blueGrey;
      //     });
      //   } else {
      //     setState(() {
      //       backgroundColor = Colors.lightBlue;
      //     });
      //   }
      // }
      if (scrollController.position.pixels > 800) {
        setState(() {
          backgroundColor = Colors.lightBlue;
        });
      } else {
        setState(() {
          backgroundColor = Colors.blueGrey;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: ListView.builder(
          controller: scrollController,
          itemCount: 50,
          itemBuilder: ((context, index) => ListTile(
                title: Text(index.toString()),
              )),
        ),
      ),
    );
  }
}
