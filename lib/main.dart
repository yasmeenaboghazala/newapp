import 'package:flutter/material.dart';
import 'package:prov1/MyHomePage.dart';
import 'package:prov1/provi.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return provi();

        }, child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    
     
      home:  MyHomePage(),
    ));
  }
}

