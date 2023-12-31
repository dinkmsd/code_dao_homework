import 'package:flutter/material.dart';

enum Status { open, close }

class Header {
  String name;
  String imageName;
  String address;
  Status status;
  String closeAt;
  double ratingStar;
  Header(
      {required this.name,
      required this.imageName,
      required this.address,
      required this.status,
      required this.closeAt,
      required this.ratingStar});
}

class Food {
  String name;
  String imageName;
  List<String> souceList;
  List<Color> colorList;
  int price;
  Food({
    required this.name,
    required this.imageName,
    required this.souceList,
    required this.colorList,
    required this.price
  });
}