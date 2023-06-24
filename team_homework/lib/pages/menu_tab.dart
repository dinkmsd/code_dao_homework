import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:team_homework/components/food_item.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[50],
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return FoodItem();
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
