import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/CategorieClothePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/HomePages/HomePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/ProfilePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/SettingsPages/SettingPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage.dart';
import 'package:flutter_application_1/component/NavigationBar.dart';

class CategorieClotheLayoutPage extends StatefulWidget {
  const CategorieClotheLayoutPage({super.key});

  @override
  State<CategorieClotheLayoutPage> createState() =>
      _CategorieClotheLayoutPageState();
}

class _CategorieClotheLayoutPageState extends State<CategorieClotheLayoutPage>
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
          CategorieClothePage(),
          Mycartpage(),
          Profilepage(),
          SettingPage()
        ],
      ),
      bottomNavigationBar: CustomNavBar(tabController: _tabController),
    );
  }
}
