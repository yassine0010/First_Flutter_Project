import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Auth_Pages/forgetPassword/Forget1.dart';
import 'package:flutter_application_1/Colors/colors.dart';

class Forget2 extends StatefulWidget {
  const Forget2({super.key});

  @override
  State<Forget2> createState() => _Forget2State();
}

class _Forget2State extends State<Forget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 200,
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
                    const Spacer(),
                    Text(
                      "Find your account",
                      style: TextStyle(
                          color: Bl, fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "We have sent you a login link to loremupsm@gmail.com This link will expire soon.",
                  style: TextStyle(color: Bl, fontSize: 25),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsetsDirectional.all(16),
                              side: BorderSide(color: KP3),
                              overlayColor: nil,
                              foregroundColor: KP3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: KP3,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsetsDirectional.all(16),
                              side: BorderSide(color: KP3),
                              overlayColor: nil,
                              backgroundColor: KP3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Forget1(),
                                ));
                          },
                          child: Text(
                            "Resend",
                            style: TextStyle(
                                color: KW,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}