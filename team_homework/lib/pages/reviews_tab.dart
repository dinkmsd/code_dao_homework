import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({super.key});

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return Container(
              height: 100,
              color: Colors.amber,
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
