import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:sebha/azkar.dart';
import 'package:sebha/help.dart';
import 'package:sebha/home.dart';

class TabPage extends StatefulWidget {
  TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'سبحة',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              print('share');
            },
            icon: Icon(
              Icons.share,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Help();
                    });
              },
              icon: Icon(
                Icons.info_outline,
                color: Colors.black,
              )),
        ],
        bottom: TabBar(
            indicator: PointTabIndicator(
                position: PointTabIndicatorPosition.bottom,
                insets: EdgeInsets.all(10)),
            controller: controller,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'السبحه',
              ),
              Tab(
                text: 'الاذكار',
              )
            ]),
      ),
      body: TabBarView(controller: controller, children: [Home(), Azkar()]),
    );
  }
}
