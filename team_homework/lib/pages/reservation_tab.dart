import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ReservationTab extends StatefulWidget {
  const ReservationTab({super.key});

  @override
  State<ReservationTab> createState() => _ReservationTabState();
}

class _ReservationTabState extends State<ReservationTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 138, 78, 73),
      child: Center(
        child: Text(
          'Menu',
        ),
      ),
    );
  }
}
