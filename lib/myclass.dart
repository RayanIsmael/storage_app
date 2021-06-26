import 'package:flutter/material.dart';

class Myclass extends ChangeNotifier {
  String? titlep, pricep, imagep, bodyp;
  Myclass({this.titlep, this.bodyp, this.imagep, this.pricep});

  product({String? title, String? price, String? image, String? body}) {
    titlep = title;
    pricep = price;
    imagep = image;
    bodyp = body;
    notifyListeners();
  }
}
