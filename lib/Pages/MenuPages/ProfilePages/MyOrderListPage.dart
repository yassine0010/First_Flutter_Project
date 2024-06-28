import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/component/CheckOutComponent.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Myorderlistpage extends StatefulWidget {
  const Myorderlistpage({super.key});

  @override
  State<Myorderlistpage> createState() => _MyorderlistpageState();
}

class _MyorderlistpageState extends State<Myorderlistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const LineIcon.arrowLeft(
                      size: 40,
                    )),
                const Spacer(),
                const Text(
                  "My orders",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const Spacer()
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DateTime.now().toString()),
                    const Gap(10),
                    const ItemInformationContainer(),
                    const Gap(20)
                  ],
                );
              },
            )),
          ],
        ),
      )),
    );
  }
}
