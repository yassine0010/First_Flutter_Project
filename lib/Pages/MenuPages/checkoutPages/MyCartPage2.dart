import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/checkoutPages/MyCartPage3.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Mycartpage2 extends StatefulWidget {
  const Mycartpage2({super.key});

  @override
  State<Mycartpage2> createState() => _Mycartpage2State();
}

bool valueC = false;
String DropDownValue = "Country";

class _Mycartpage2State extends State<Mycartpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              /*     child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),*/
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
                        "Check out",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                      const Spacer()
                    ],
                  ),
                  const Gap(20),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            PaymentMethodeContainer(
                              index: index,
                            ),
                            const Gap(10)
                          ],
                        );
                      },
                    ),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "First Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              decoration: InputDecoration(
                                  hintText: "John",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(30),
                          const Text(
                            "Card Number Details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  hintText: "1234 1234 1234 1234",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(30),
                          const Text(
                            "Country",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            color: Colors.white,
                            child: const DropdownMenu(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                menuStyle: MenuStyle(
                                    alignment: Alignment.bottomCenter,
                                    shadowColor:
                                        WidgetStatePropertyAll(Colors.amber),
                                    elevation: WidgetStatePropertyAll(0),
                                    backgroundColor: WidgetStatePropertyAll(
                                        Color.fromARGB(255, 255, 255, 255))),
                                width: 150,
                                hintText: "Country",
                                dropdownMenuEntries: <DropdownMenuEntry<
                                    String>>[
                                  DropdownMenuEntry(
                                      value: "Tunisia", label: "Tunisia"),
                                  DropdownMenuEntry(
                                      value: "Tunisia", label: "Tunisia"),
                                  DropdownMenuEntry(
                                      value: "Tunisia", label: "Tunisia"),
                                  DropdownMenuEntry(
                                      value: "Tunisia", label: "Tunisia")
                                ]),
                          ),
                          const Gap(30),
                          const Text(
                            "Adress Code",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              decoration: InputDecoration(
                                  hintText: "3100",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(50),
                          Row(
                            children: [
                              const Text(
                                "I'm not a robot",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Checkbox(
                                value: valueC,
                                onChanged: (value) {
                                  setState(() {
                                    valueC = !valueC;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Last Name",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              decoration: InputDecoration(
                                  hintText: "Doe",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(30),
                          const Text(
                            "CCV",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              decoration: InputDecoration(
                                  hintText: "1234",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(30),
                          const Text(
                            "City",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              decoration: InputDecoration(
                                  hintText: "Sfax",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(30),
                          const Text(
                            "Limite Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          const Gap(5),
                          Container(
                            width: 150,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              decoration: InputDecoration(
                                  hintText: "08 | 21",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1))),
                            ),
                          ),
                          const Gap(50),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Mycartpage3(),
                                  ));
                            },
                            child: Container(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 25, end: 25, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(width: 2)),
                              child: const Text(
                                "CONTINUE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class PaymentMethodeContainer extends StatelessWidget {
  final int index;
  PaymentMethodeContainer({
    super.key,
    required this.index,
  });
  List TextList = [
    "PayPal",
    "Visa",
    "MasterCard",
    "Bitcoin",
    "cash on delivery",
    "Bank Transfer",
    "Gift Card"
  ];
  List IconList = [
    const LineIcon.paypal(),
    const LineIcon.ggCurrency(),
    const LineIcon.mastercardCreditCard(),
    const LineIcon.bitcoin(),
    const LineIcon.cashRegister(),
    const LineIcon.coins(),
    const LineIcon.gift()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
          border: Border.all(width: 2)),
      child: Row(
        children: [
          Text(
            TextList[index],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Gap(5),
          IconList[index]
        ],
      ),
    );
  }
}
