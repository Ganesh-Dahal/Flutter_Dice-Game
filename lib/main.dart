import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int ran = Random().nextInt(6);
    ran += 1;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //appbar
          title: const Center(child: Text("Simple Flutter Project")),
          backgroundColor: const Color.fromARGB(255, 255, 36, 7),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Image(
                    image: AssetImage('image/$ran.png'),
                  ),
                ),
              ),
              const Card(
                  // Card
                  // ignore: sort_child_properties_last
                  child: ListTile(
                    leading: Icon(Icons.facebook_rounded),
                    title: Text(
                      'Ganesh Dahal',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  elevation: 15,
                  shadowColor: Color.fromARGB(255, 75, 77, 75),
                  margin: EdgeInsets.all(20)),
            ],
          ),
        ),
      ),
    );
  }
}
