import 'package:flutter/material.dart';

class CustomButton {
  static Widget tabBarButton(
      {required String title, required int index, required curIndex}) {
    return Tab(
      icon: Text(
        '$title',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: index == curIndex ? Colors.red[900] : Colors.black),
      ),
    );
  }
}
