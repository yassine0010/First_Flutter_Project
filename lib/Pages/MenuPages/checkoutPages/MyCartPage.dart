import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage2.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/component/CheckOutComponent.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Mycartpage extends StatefulWidget {
  const Mycartpage({super.key});

  @override
  State<Mycartpage> createState() => _MycartpageState();
}

class _MycartpageState extends State<Mycartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "My Cart",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(10),
              Expanded(
                  child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 206, 206, 205),
                            child: Row(
                              children: [
                                const Column(
                                  children: [
                                    ImageContainer(),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "Tshirt",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    const Text(
                                      "Size : M",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Gap(10),
                                    Row(
                                      children: [
                                        const Text(
                                          "Quantity :",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Gap(5),
                                        const LineIcon.angleLeft(
                                          size: 13,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(width: 2)),
                                          padding: const EdgeInsets.only(
                                              right: 5,
                                              left: 5,
                                              top: 1,
                                              bottom: 1),
                                          child: const Text(
                                            "5",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const LineIcon.angleRight(
                                          size: 13,
                                        )
                                      ],
                                    ),
                                    const Gap(10),
                                    const Text(
                                      "Price : 50.000 TND",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Gap(20)
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                              children: [
                                LineIcon.minus(),
                                Gap(10),
                                LineIcon.edit()
                              ],
                            ),
                          )
                        ],
                      ),
                      const Gap(10)
                    ],
                  );
                },
              )),
              const Gap(10),
              const Row(
                children: [
                  Text("Total : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Spacer(),
                  Text(
                    "47.000 TND",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Gap(5)
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Mycartpage2(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsetsDirectional.only(
                          start: 30, end: 30, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2)),
                      child: const Text(
                        "CHECK OUT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
/**      Text(
                            "Size M",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          */