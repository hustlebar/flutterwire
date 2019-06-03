import 'package:flutter/material.dart';

class WeatherTabBar extends StatefulWidget {
  final Function onTabChange;
  final int startIndex;


  const WeatherTabBar({
    Key key,
    this.onTabChange,
    this.startIndex,
  });

  @override
  WeatherTabState createState() => WeatherTabState();
}

class WeatherTabState extends State<WeatherTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int activeTabIndex;


  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.startIndex
    );

    _tabController.addListener(_onTabChange);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  TabBar _build(BuildContext context) {
    List<String> tabItems = ["Chennai", "Bangalore", "Mumbai"];

    return TabBar(
      tabs: tabItems.map((value) => Text(value)).toList(),
      controller: _tabController,
    );
  }

  void _onTabChange() {
    if (_tabController.indexIsChanging) return;

    widget.onTabChange(_tabController.index);
    setState(() {
      activeTabIndex = _tabController.index;
    });
  }
}