import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storag_app/myclass.dart';
import 'package:storag_app/screens/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Myclass(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
