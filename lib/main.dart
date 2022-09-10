import 'package:flutter/material.dart';
import 'package:json_parse_kullanimi/anasayfa.dart';

void main() {
  runApp(const MyApp());
}

// Webservisler 2 ye ayrılır GET ve POST
//GET : Webservis bizden veri istemez ise
//POST : Webservis bizden veri isterse

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}