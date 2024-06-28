import 'package:flutter/material.dart';

class ItemInformationContainer extends StatelessWidget {
  const ItemInformationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(
        height: 151,
        child: Text("data"),
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
}/*child: Row(children: [
          Column(
            children: [ImageContainer()],
          ),
        ]),
  Column(children: [
              Row(
                children: [
                  Text(
                    "Tshirt",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  LineIcon.pen(),
                  Gap(10),
                  LineIcon.minus()
                ],
              ),
            ),
            Text(
              "Color : Black",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "Size M",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Quantity :",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Gap(5),
                LineIcon.angleLeft(
                  size: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, border: Border.all(width: 2)),
                  padding:
                      EdgeInsets.only(right: 5, left: 5, top: 1, bottom: 1),
                  child: Text(
                    "5",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                LineIcon.angleRight(
                  size: 16,
                )
              ],
            ),
            Text(
              "Price : 50.000 TND",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),]*/