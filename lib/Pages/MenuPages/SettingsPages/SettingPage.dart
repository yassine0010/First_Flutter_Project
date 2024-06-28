import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Gap(30),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [Text("Language"), Spacer(), Text("ENG")],
                    ),
                    Row(
                      children: [Text("Theme"), Spacer(), Text("Light")],
                    ),
                    Row(
                      children: [Text("Device"), Spacer(), Text("TND")],
                    ),
                    Row(
                      children: [Text("Image Quality"), Spacer(), Text("High")],
                    ),
                    Row(
                      children: [Text("Version"), Spacer(), Text("1.0.0")],
                    ),
                    Row(
                      children: [
                        Text("About Us"),
                      ],
                    ),
                    Row(
                      children: [Text("Contact Us")],
                    ),
                    Row(
                      children: [Text("Politics and confidentials")],
                    ),
                    Text(
                      "All rights are reserved  © ",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
