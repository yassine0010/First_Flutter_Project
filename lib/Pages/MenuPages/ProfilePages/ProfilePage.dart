import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Auth_Pages/forgetPassword/Forget1.dart';
import 'package:flutter_application_1/Pages/Auth_Pages/Starting.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/MyCreditCard.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/MyFavoriteItemPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/ProfilePages/MyOrderListPage.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Center(
                    child: Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Gap(10),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(100)),
                      child: const CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: LineIcon.user(
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const Gap(5),
                  const Center(
                    child: Text("John Doe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                  const Gap(30),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Forget1(),
                            ));
                      },
                      child: const Row(
                        children: [
                          LineIcon.lock(),
                          Gap(5),
                          Text("Change Password")
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Myorderlistpage(),
                            ));
                      },
                      child: const Row(
                        children: [
                          LineIcon.shoppingCart(),
                          Gap(5),
                          Text("My Orders")
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Myfavoriteitempage(),
                            ));
                      },
                      child: const Row(
                        children: [
                          LineIcon.heart(),
                          Gap(5),
                          Text("My Favorite Items")
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        LineIcon.clock(),
                        Gap(5),
                        Text("Recently Searched")
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyCreditCards(),
                            ));
                      },
                      child: const Row(
                        children: [
                          LineIcon.creditCard(),
                          Gap(5),
                          Text("My Credit Cards")
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      child: const Row(
                        children: [
                          LineIcon.doorClosed(),
                          Gap(5),
                          Text("Sign Out")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
