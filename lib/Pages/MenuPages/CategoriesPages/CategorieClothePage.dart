import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/Layouts/CategorieItemLayoutPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/component/PromotionHorizentalList.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/component/ReturnBouttom.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class CategorieClothePage extends StatefulWidget {
  const CategorieClothePage({super.key});

  @override
  State<CategorieClothePage> createState() => _CategorieClothePageState();
}

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
final List<String> imageUrls = [
  "images/clothes/chemise.jpg",
  "images/clothes/coat.jpg",
  "images/clothes/hat.jpg",
  "images/clothes/hoodies.jpg",
  "images/clothes/jeans.jpg",
  "images/clothes/salopette.jpg",
  "images/clothes/shirt.jpg",
  "images/clothes/short.jpg",
  "images/clothes/sneakers.jpg",
  "images/clothes/suit.jpg"
];
final List<String> TextImage = [
  "chemise",
  "coat",
  "hat",
  "hoodies",
  "jeans",
  "salopette",
  "shirt",
  "short",
  "sneakers",
  "suit"
];
bool _isSearchBarTapped = true;

class _CategorieClothePageState extends State<CategorieClothePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _isSearchBarTapped = false;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: "iphone",
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          prefixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isSearchBarTapped = true;
                                });
                              },
                              child: const LineIcon.arrowLeft()),
                          suffixIcon: const LineIcon.search()),
                    ),
                  ),
                  if (_isSearchBarTapped == false) ...[
                    Expanded(
                        child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ListTile(
                            contentPadding: EdgeInsets.only(top: 12, left: 10),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("iphone XS"),
                                Divider(
                                  thickness: 2,
                                )
                              ],
                            ));
                      },
                    ))
                  ],
                  if (_isSearchBarTapped == true) ...[
                    const Gap(10),
                    promotionsHorientalList(),
                    Expanded(
                        child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 180,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CategorieItemLayoutPage(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(imageUrls[index])),
                              color: const Color.fromARGB(255, 206, 206, 206),
                            ),
                            child: Column(
                              children: [
                                const Spacer(),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8),
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    71, 255, 255, 255)),
                                            child: ClipRRect(
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 3, sigmaY: 3),
                                                child: Center(
                                                    child: Text(
                                                  TextImage[index],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                )),
                                              ),
                                            ))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                    const Gap(10),
                    const ReturnBouttom()
                  ]
                ],
              ),
            ),
          ),
        )));
  }
}
