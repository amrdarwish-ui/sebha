import 'package:flutter/material.dart';
import 'package:sebha/home.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
            indicatorColor: Colors.black,
            labelStyle: TextStyle(color: Colors.black),
            controller: controller,
            tabs: [
              Tab(
                text: 'Amr',
              ),
              Tab(
                text: 'Amr2',
              )
            ]),
      ),
      body: TabBarView(controller: controller, children: [
        Home(),
        Home(),
      ]),
    );
  }
}
