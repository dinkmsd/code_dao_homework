import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return Container(
              height: 100,
              color: Colors.red,
            );
          }),
          separatorBuilder: ((context, index) {
            return SizedBox(
              height: 10,
            );
          }),
          itemCount: 10),
    );
  }
}
