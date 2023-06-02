import 'package:dr_chat_app/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DemoClass(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoClass extends StatelessWidget {
  const DemoClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 600,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.orange,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text("Hello"),
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  child: Text("Hello"),
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.yellow,
                  padding: EdgeInsets.all(10),
                  child: Text("Hello"),
                ),
              ],
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              child: Text("Next"))
        ],
      ),
    ));
  }
}
