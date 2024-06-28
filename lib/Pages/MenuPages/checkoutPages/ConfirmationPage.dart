import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class Confirmationpage extends StatefulWidget {
  const Confirmationpage({super.key});

  @override
  State<Confirmationpage> createState() => _ConfirmationpageState();
}

class _ConfirmationpageState extends State<Confirmationpage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Your Order is confirmed",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(10),
              const Center(
                child: Text(
                  "Have A good Day",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              const Gap(20),
              LottieBuilder.network(
                  width: 200,
                  height: 200,
                  "https://lottie.host/44fa6bf4-6f41-47a7-93a7-cf6034d4a617/0psNXoFwHi.json"),
              const Gap(20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LayoutPage(),
                        ),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 35),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
