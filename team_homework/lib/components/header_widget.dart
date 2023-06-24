import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:team_homework/data/mocks/pattern.dart';
import 'package:team_homework/data/models.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/anh_nha_hang.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.2),
                shape: CircleBorder()),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.white.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  anBbqDongKhoiInfo.name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  anBbqDongKhoiInfo.address,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: anBbqDongKhoiInfo.status == Status.open
                                ? 'Now Open'
                                : 'Now Close',
                            style: TextStyle(
                                color: anBbqDongKhoiInfo.status == Status.open
                                    ? Colors.green
                                    : Colors.red,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: ' - Close at ${anBbqDongKhoiInfo.closeAt}')
                      ], style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                      color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${anBbqDongKhoiInfo.ratingStar}",
                            ),
                            WidgetSpan(
                              child: Icon(Icons.star, size: 14, color: Colors.white,),
                            ),
                            
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
