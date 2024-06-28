import 'package:flutter/material.dart';
import 'package:flutter_application_1/Colors/colors.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class BoxProduct extends StatelessWidget {
  final String InfoItemText;
  const BoxProduct({
    super.key,
    required this.InfoItemText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const ImageContainer(),
            InfoItemText == "Sale offer"
                ? Positioned(
                    top: -15,
                    right: -15,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Pink,
                          borderRadius: BorderRadius.circular(200)),
                      child: Center(
                        child: Text(
                          "-20%",
                          style: TextStyle(
                              fontSize: 12,
                              color: solde,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                : const Row()
          ],
        ),
        getPrice(InfoItemText),
      ],
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
      width: 110,
      height: 137,
      child: Image.asset(
        "images/18876.png",
        fit: BoxFit.fill,
      ),
    );
  }
}

Widget getPrice(String text) {
  if (text == "Sale offer") {
    return Column(
      children: [
        const Gap(5),
        const Text(
          "Random Flowers",
        ),
        Text(
          "79.999 TND",
          style: TextStyle(
              color: Bl, fontSize: 17, decoration: TextDecoration.lineThrough),
        ),
        Text(
          "49.999 TND",
          style: TextStyle(
              color: solde, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  } else if (text == "the most sold") {
    return Column(
      children: [
        const Gap(5),
        const Text("Random Flowers"),
        Text(
          "+5 000 sales",
          style: TextStyle(
            color: Bl,
            fontSize: 17,
          ),
        ),
        Text(
          "49.999 TND",
          style:
              TextStyle(color: Bl, fontSize: 21, fontWeight: FontWeight.bold),
        )
      ],
    );
  } else {
    return Column(
      children: [
        const Gap(5),
        const Text("Random Flowers"),
        const Row(
          children: [
            Text("4.5"),
            LineIcon.starAlt(
              color: Color.fromARGB(255, 216, 199, 39),
            ),
            Text(
              "350 Rate",
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text(
          "49.999 TND",
          style:
              TextStyle(color: Bl, fontSize: 21, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
