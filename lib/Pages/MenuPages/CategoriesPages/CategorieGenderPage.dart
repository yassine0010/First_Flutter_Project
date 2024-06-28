import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/Layouts/CategorieClotheLayoutPage.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/component/PromotionHorizentalList.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/component/ReturnBouttom.dart';

import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class CategorieGenderPage extends StatefulWidget {
  const CategorieGenderPage({super.key});

  @override
  State<CategorieGenderPage> createState() => _CategorieGenderPageState();
}

final List<String> imageUrls = [
  "images/working.jpg",
  "images/woman.jpg",
  "images/teen.jpg",
  "images/summer.jpg",
  "images/sport.jpg",
  "images/oldman.jpg",
  "images/men.jpg",
  "images/kid.jpg",
  "images/formal.jpg",
  "images/baby.jpg"
];
final List<String> TextImage = [
  "working",
  "woman",
  "teen",
  "summer",
  "sport",
  "oldman",
  "men",
  "kid",
  "formal",
  "baby"
];

bool _isSearchBarTapped = true;

class _CategorieGenderPageState extends State<CategorieGenderPage> {
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
                  //search bar
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
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
                  ], //search bar
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
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
                                      const CategorieClotheLayoutPage(),
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
                  ],
                ],
              ),
            ),
          ),
        )));
  }
}
