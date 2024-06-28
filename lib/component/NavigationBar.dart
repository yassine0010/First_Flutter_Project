import 'package:flutter/material.dart';
import 'package:flutter_application_1/Colors/colors.dart';
import 'package:line_icons/line_icon.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: BarColor,
          border: const BorderDirectional(
              top: BorderSide(width: 1, color: Colors.black))),
      child: TabBar(
        dividerColor: BarColor,
        overlayColor: WidgetStatePropertyAll(nil),
        labelColor: const Color(0xff0FC8BB),
        indicatorColor: const Color(0xff0FC8BB),
        labelPadding: const EdgeInsets.symmetric(horizontal: 0.1),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 4,
        indicatorPadding: const EdgeInsets.only(bottom: 75),
        labelStyle: const TextStyle(fontSize: 16),
        controller: _tabController,
        tabs: const [
          Tab(
            icon: LineIcon.home(
              size: 28,
            ),
            child: Text(
              "Home",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Tab(
            icon: LineIcon.list(
              size: 28,
            ),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Tab(
            icon: LineIcon.shoppingCart(
              size: 28,
            ),
            child: Text(
              "My Cart",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Tab(
            icon: LineIcon.user(
              size: 28,
            ),
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Tab(
            icon: LineIcon.cog(
              size: 28,
            ),
            child: Text(
              "Settings",
              style: TextStyle(fontSize: 11),
            ),
          )
        ],
      ),
    );
  }
}
