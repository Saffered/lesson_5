import 'package:flutter/material.dart';
import 'package:lesson_4/home_page.dart';
import 'package:lesson_4/simble_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      routes: {
        Simblepage.id: (context)=> Simblepage(),
      },
    );
  }
}
