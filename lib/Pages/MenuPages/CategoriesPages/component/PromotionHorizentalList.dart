import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class promotionsHorientalList extends StatelessWidget {
   promotionsHorientalList({
    super.key,
  });
  final List<String> promotions = [
    "🔥 Hot Deal: New Collection Just In!",
    "🎉 Save Big: 20% Off Everything!",
    "💥 Mega Sale: Buy 1 Get 1 Free!",
    "⏳ Hurry Up: Flash Sale 50% Off!",
    "🎁 Special Offer: Extra 15% Off Today!",
    "🌟 Fresh Styles: Discover New Arrivals!",
    "🛍️ Clearance: Final Markdown Prices!",
    "🎊 Holiday Bonanza: Unbeatable Deals!",
    "🏷️ VIP Access: Exclusive Member Discounts!",
    "🍂 Seasonal Sale: Upgrade Your Wardrobe!",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(100)),
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(promotions[index]),
                ),
                const Gap(10)
              ],
            );
          },
        ));
  }
}
