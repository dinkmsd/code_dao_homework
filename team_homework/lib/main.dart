import 'package:flutter/material.dart';
import 'package:team_homework/components/custom_button.dart';
import 'package:team_homework/components/header_widget.dart';
import 'package:team_homework/data/mocks/color_custom.dart';
import 'package:team_homework/pages/menu_tab.dart';
import 'package:team_homework/pages/reservation_tab.dart';
import 'package:team_homework/pages/reviews_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[50],
      child: SafeArea(
        child: Scaffold(
          body: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                HeaderWidget(),
                Container(
                  color: Colors.white,
                  height: 58,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: AppBar(
                    bottom: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange[50]),
                      tabs: [
                        CustomButton.tabBarButton(
                            title: 'Reservation',
                            index: _tabController.index,
                            curIndex: 0),
                        CustomButton.tabBarButton(
                            title: 'Menu',
                            index: _tabController.index,
                            curIndex: 1),
                        CustomButton.tabBarButton(
                            title: 'Reviews',
                            index: _tabController.index,
                            curIndex: 2),
                      ],
                      onTap: (value) {
                        setState(() {
                          _tabController.index = value;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ReservationTab(),
                      MenuTab(),
                      ReviewsTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
