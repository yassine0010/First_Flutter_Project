import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/ConfirmationPage.dart';
import 'package:gap/gap.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: const Color(0xffF1F1F1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(0)),
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Gap(10),
                  Text(
                    "You really want to pay 400.000 TND",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Gap(10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, right: 20, left: 20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(50)),
                      child: const Center(
                          child: Text(
                        "No",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Confirmationpage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, right: 20, left: 20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(50)),
                      child: const Center(
                          child: Text(
                        "Yes I'm Sure",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
