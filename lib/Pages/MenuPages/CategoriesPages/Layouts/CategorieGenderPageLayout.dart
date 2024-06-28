import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/CategorieGenderPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/HomePages/HomePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/ProfilePage.dart';
import 'package:flutter_application_1/Pages/MenuPages/SettingsPages/SettingPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage.dart';
import 'package:flutter_application_1/component/NavigationBar.dart';

class Categoriegenderpagelayout extends StatefulWidget {
  const Categoriegenderpagelayout({super.key});

  @override
  State<Categoriegenderpagelayout> createState() =>
      _CategoriegenderpagelayoutState();
}

class _CategoriegenderpagelayoutState extends State<Categoriegenderpagelayout>
    with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 5, vsync: this);
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 5,
        vsync: this,
        initialIndex: 1); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          Homepage(),
          CategorieGenderPage(),
          Mycartpage(),
          Profilepage(),
          SettingPage()
        ],
      ),
      bottomNavigationBar: CustomNavBar(tabController: _tabController),
    );
  }
}
