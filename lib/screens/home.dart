import 'package:flutter/material.dart';
import 'package:storag_app/constance.dart';
import 'package:storag_app/widget/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kmain ,
      appBar: app_bar(),
      body: HomeBody()
    );
  }

  // ignore: non_constant_identifier_names
  AppBar app_bar() {
    return AppBar(
      backgroundColor: kmain,
      elevation: 0,
      title: Text('Home Screen'),
      centerTitle: true,
      
    );
  }
}