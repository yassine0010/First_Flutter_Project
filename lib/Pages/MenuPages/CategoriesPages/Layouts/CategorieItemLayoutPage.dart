import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/CategorieItemPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/HomePages/HomePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/ProfilePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/SettingsPages/SettingPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage.dart';
import 'package:flutter_application_1/component/NavigationBar.dart';

class CategorieItemLayoutPage extends StatefulWidget {
  const CategorieItemLayoutPage({super.key});

  @override
  State<CategorieItemLayoutPage> createState() =>
      _CategorieItemLayoutPageState();
}

class _CategorieItemLayoutPageState extends State<CategorieItemLayoutPage>
    with TickerProviderStateMixin {
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
          Categorieitempage(),
          Mycartpage(),
          Profilepage(),
          SettingPage()
        ],
      ),
      bottomNavigationBar: CustomNavBar(tabController: _tabController),
    );
  }
}
