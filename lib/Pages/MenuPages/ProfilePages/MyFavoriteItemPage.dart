import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Myfavoriteitempage extends StatefulWidget {
  const Myfavoriteitempage({super.key});

  @override
  State<Myfavoriteitempage> createState() => _MyfavoriteitempageState();
}

class _MyfavoriteitempageState extends State<Myfavoriteitempage> {
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
                  "My Favorite Items",
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
                return const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [FavoriteItemInformationContainer(), Gap(20)],
                );
              },
            )),
          ],
        ),
      )),
    );
  }
}

class FavoriteItemInformationContainer extends StatelessWidget {
  const FavoriteItemInformationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 219, 219, 219),
      ),
      child: Row(
        children: [
          const Column(
            children: [ImageContainer()],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: const Row(
                      children: [
                        Text(
                          "Tshirt",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        LineIcon.minus()
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                "Price : 50.000 TND",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Image.asset(
        "images/1.jpg",
        fit: BoxFit.contain,
      ),
    );
  }
}
