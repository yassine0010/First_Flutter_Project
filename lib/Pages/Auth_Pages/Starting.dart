import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Auth_Pages/SignIn.dart';
import 'package:flutter_application_1/Colors/colors.dart';
import 'package:flutter_application_1/Pages/Auth_Pages/SignUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        MyBar(tabController: _tabController),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            Signup(),
            SignIn(),
          ]),
        )
      ],
    ));
  }
}

class MyBar extends StatelessWidget {
  const MyBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: KP),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Text(
            "Yassine Ben Ayed",
            style: TextStyle(color: KW, fontSize: 30),
          ),
          TabBar(
              unselectedLabelColor: Bl,
              indicatorColor: Bl,
              labelColor: KP2,
              labelStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overlayColor:
                  const WidgetStatePropertyAll(Color.fromARGB(0, 255, 255, 255)),
              indicatorSize: TabBarIndicatorSize.tab,
              padding: const EdgeInsetsDirectional.only(top: 40),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Sign Up",
                ),
                Tab(
                  text: "Sign In",
                )
              ]),
        ],
      ),
    );
  }
}
