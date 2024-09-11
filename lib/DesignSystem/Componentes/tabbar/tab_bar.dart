import 'package:flutter/material.dart';

class TabBarApp extends StatefulWidget {
  const TabBarApp({super.key});

  @override
  _TabBarAppState createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Sample'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(child: Text('Options')),
            Tab(child: Text('Configurtion')),
            Tab(child: Text('help')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
