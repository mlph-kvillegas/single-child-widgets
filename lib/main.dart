import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Single Child Widgets'),
    );
  }
}

class MyHomePage extends StatelessWidget { 
   MyHomePage({Key? key, required this.title}) : super(key: key);
   
   final String title; 
   @override 
   Widget build(BuildContext context) {
      return Scaffold( 
         appBar: AppBar(title: Text(this.title), ), 
         body: Center(child: Container(
          height: 100.0,
          width: 150.0,
          child: Text("I am a container"),
          decoration: BoxDecoration(
            color: Colors.red, 
            border: Border.all(
              width: 5,
              color: Colors.cyan
              )
            ),
          ),
        ),
      );
   }
}