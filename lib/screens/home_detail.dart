import 'package:flutter/material.dart';
import 'package:storag_app/constance.dart';
import 'package:storag_app/widget/detail/bodyHomeDetail.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kmain,
      appBar: homeDetailAppBar(context),
      body: DetailBody()
    );
  }

  AppBar homeDetailAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kbackgroundcolor,
      centerTitle: true,
      elevation: 0,
      title: Text(
        'Detail of Product',
        style: TextStyle(color: Colors.black),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: kmain,
        padding: EdgeInsets.only(left: 12),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
