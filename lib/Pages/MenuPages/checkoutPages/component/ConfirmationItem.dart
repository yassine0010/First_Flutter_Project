import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class FinalItemCard extends StatelessWidget {
  const FinalItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [Text("Deliver To "), Spacer(), LineIcon.edit()],
        ),
        const Gap(10),
        const Text(
          "427 AVENU FOULEN FOULENI , Sidi Massoud",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Gap(10),
        const Divider(
          thickness: 2,
        ),
        const Gap(20),
        const Text("Payment Details"),
        const Gap(10),
        const Text(
          "XXXX-XXXX-XXXX-1234",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const Gap(10),
        const Divider(
          thickness: 2,
        ),
        const Gap(10),
        const Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Gap(10),
        SizedBox(
          height: 200,
          child: Row(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const Column(
                    children: [ListItem(), Gap(10)],
                  );
                },
              )),
            ],
          ),
        ),
        const Gap(30),
        const Text(
          "Total : 450.000 TND",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        )
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(width: 70, height: 70, "images/1.jpg"),
        const Gap(5),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Grey Shirt"),
            Gap(5),
            Text(
              "Size : Xs , Quantite : 24",
              style: TextStyle(fontSize: 10),
            )
          ],
        )
      ],
    );
  }
}
