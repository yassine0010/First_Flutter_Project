import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/CategorieSpecifiqueItem.dart';
import 'package:flutter_application_1/Pages/MenuPages/HomePages/HomePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/ProfilePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/SettingsPages/SettingPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage.dart';
import 'package:flutter_application_1/component/NavigationBar.dart';

class CategorieSpecifiqueItemLayout extends StatefulWidget {
  const CategorieSpecifiqueItemLayout({super.key});

  @override
  State<CategorieSpecifiqueItemLayout> createState() =>
      _CategorieSpecifiqueItemLayoutState();
}

class _CategorieSpecifiqueItemLayoutState
    extends State<CategorieSpecifiqueItemLayout> with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 5, vsync: this);
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          Homepage(),
          Categoriespecifiqueitem(),
          Mycartpage(),
          Profilepage(),
          SettingPage()
        ],
      ),
      bottomNavigationBar: CustomNavBar(tabController: _tabController),
    );
  }
}
