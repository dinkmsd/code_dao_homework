import 'package:flutter/material.dart';
import 'package:team_homework/data/mocks/pattern.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/thibo.png',
            )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${foodTemp.name}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 4,),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: '\u2022   '),
                  TextSpan(text: '${foodTemp.souceList[0]}')
                ], style: TextStyle(color: foodTemp.colorList[0]))),
                SizedBox(height: 4,),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: '\u2022   '),
                  TextSpan(text: '${foodTemp.souceList[1]}')
                ], style: TextStyle(color: foodTemp.colorList[1]))),
                SizedBox(height: 4,),
                Text('${foodTemp.price}.000 VND',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        )
      ]),
    );
  }
}
