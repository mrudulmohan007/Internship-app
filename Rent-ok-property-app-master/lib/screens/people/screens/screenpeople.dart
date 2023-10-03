import 'package:flutter/material.dart';

import 'package:rental_ok_app/screens/people/Tabs/dashboardppl.dart';

class ScreenPeople extends StatefulWidget {
  const ScreenPeople({super.key});

  @override
  State<ScreenPeople> createState() => _ScreenPeopleState();
}

class _ScreenPeopleState extends State<ScreenPeople>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 2, 216),
        elevation: 0,

        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 25,
            icon: Icon(Icons.home_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ),

        // TextButton with down arrow
        title: TextButton.icon(
          onPressed: () {},
          label: Text(
            'User',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: DashboardPeople(),
      ),
    );
  }
}
