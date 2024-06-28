import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/CategoriePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/HomePages/HomePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/ProfilePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/SettingsPages/SettingPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage.dart';

import 'package:flutter_application_1/component/NavigationBar.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

bool b = true;
List MyPages = [
  const Homepage(),
  const Categoriepage(),
  const Mycartpage(),
  const Profilepage(),
  const SettingPage()
];

class _LayoutPageState extends State<LayoutPage> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 5, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          Homepage(),
          Categoriepage(),
          Mycartpage(),
          Profilepage(),
          SettingPage()
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        tabController: _tabController,
      ),
    );
  }
}
