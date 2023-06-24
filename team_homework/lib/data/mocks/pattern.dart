import 'package:flutter/material.dart';
import 'package:team_homework/data/models.dart';

Header anBbqDongKhoiInfo = Header(
    name: 'An BBQ Dong Khoi',
    imageName: '/assets/images/anh_nha_hang',
    address:
        'Vincom Center, No. 70 Le Thanh Ton, Ben Nghe Ward, Distric 1, HCMC',
    status: Status.open,
    closeAt: '10:00PM',
    ratingStar: 4.5);

Food foodTemp = Food(
    name: 'USDA Beef Ribs Finger',
    imageName: 'assets/images/thibo.png',
    souceList: ['Honey sauce', 'Obathan Sauce'],
    colorList: [
      const Color.fromARGB(255, 226, 90, 90),
      Color.fromARGB(255, 95, 24, 24)
    ],
    price: 389);
