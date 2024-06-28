import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/component/ConfirmationDialog.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/component/ConfirmationItem.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Mycartpage3 extends StatefulWidget {
  const Mycartpage3({super.key});

  @override
  State<Mycartpage3> createState() => _Mycartpage3State();
}

class _Mycartpage3State extends State<Mycartpage3> {
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
                  "Confirmation",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const Spacer()
              ],
            ),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 550,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(3, 3),
                            blurRadius: 10,
                            color: Color.fromARGB(228, 94, 94, 94))
                      ], color: Color.fromARGB(255, 221, 221, 221)),
                      child: const FinalItemCard(),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return (const ConfirmationDialog());
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsetsDirectional.only(
                        start: 25, end: 25, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2)),
                    child: const Text(
                      "Confirm",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                const Gap(25)
              ],
            ),
          ],
        ),
      )),
    );
  }
}
