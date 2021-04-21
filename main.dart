import 'package:flutter/material.dart';
import 'package:know_ur_self/Home.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        "MyApp": (BuildContext context) => new MyApp(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, "MyApp"),
            child: Text("Emotional test"),
          )
        ],
      ),
    );
  }
}
