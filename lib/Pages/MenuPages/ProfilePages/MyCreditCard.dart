import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class MyCreditCards extends StatefulWidget {
  const MyCreditCards({super.key});

  @override
  State<MyCreditCards> createState() => _MyCreditCardsState();
}

class _MyCreditCardsState extends State<MyCreditCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
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
                  "My credit Card",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const Spacer()
              ],
            ),
            const Gap(30),
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: const [],
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 0.3),
                              color: const Color.fromARGB(255, 230, 229, 229)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text("BankName"),
                                  const Spacer(),
                                  const Text(
                                    'visa',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove))
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "**** **** **** **** 1234",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                              const Gap(20),
                              const Row(
                                children: [
                                  Text("Cardholder Name"),
                                  Spacer(
                                    flex: 3,
                                  ),
                                  Text("Expire Date")
                                ],
                              ),
                              const Row(
                                children: [
                                  Text("John Doe"),
                                  Spacer(),
                                  Text("05/2021")
                                ],
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                    const Gap(30)
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
