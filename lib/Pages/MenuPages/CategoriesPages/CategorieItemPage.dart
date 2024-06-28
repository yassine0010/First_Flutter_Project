import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/Layouts/CategorieSpecifiqueItemLayout.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/component/ReturnBouttom.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Categorieitempage extends StatefulWidget {
  const Categorieitempage({super.key});

  @override
  State<Categorieitempage> createState() => _CategorieitempageState();
}

bool _isSearchBarTapped = true;
bool isChecked = false;
bool isChecked2 = false;
int rad = 0;
double value = 0;

class _CategorieitempageState extends State<Categorieitempage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var values = const RangeValues(10, 250);

    return Scaffold(
        key: _key,
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16),
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
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _key.currentState!.showBottomSheet((context) =>
                                StatefulBuilder(builder: (context, setState) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 500,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Row(
                                                  children: [
                                                    Spacer(),
                                                    LineIcon.filter(),
                                                    Text("Filter By"),
                                                    Spacer()
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Price",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const Gap(40),
                                                    Expanded(
                                                      child: RangeSlider(
                                                        activeColor:
                                                            const Color(0xff0FC8BB),
                                                        min: 10,
                                                        max: 250,
                                                        divisions: 250,
                                                        labels: RangeLabels(
                                                            '${values.start.toStringAsFixed(0)} TND',
                                                            '${values.end.toStringAsFixed(0)} TND'),
                                                        values: values,
                                                        onChanged: (newvalue) {
                                                          setState(() {
                                                            values = newvalue;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Free Delivery ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const Gap(40),
                                                    Checkbox(
                                                      activeColor:
                                                          const Color(0xff0FC8BB),
                                                      value: isChecked,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          isChecked =
                                                              !isChecked;
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Rating",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const Gap(40),
                                                    AnimatedRatingStars(
                                                      initialRating: 0,
                                                      minRating: 0.0,
                                                      maxRating: 5.0,
                                                      filledColor: Colors.amber,
                                                      emptyColor: Colors.grey,
                                                      filledIcon: Icons.star,
                                                      halfFilledIcon:
                                                          Icons.star_half,
                                                      emptyIcon:
                                                          Icons.star_border,
                                                      onChanged:
                                                          (double rating) {
                                                        // Handle the rating change here
                                                        print(
                                                            'Rating: $rating');
                                                      },
                                                      displayRatingValue: true,
                                                      interactiveTooltips: true,
                                                      customFilledIcon:
                                                          Icons.star,
                                                      customHalfFilledIcon:
                                                          Icons.star_half,
                                                      customEmptyIcon:
                                                          Icons.star_border,
                                                      starSize: 30.0,
                                                      animationDuration:
                                                          const Duration(
                                                              milliseconds:
                                                                  300),
                                                      animationCurve:
                                                          Curves.easeInOut,
                                                      readOnly: false,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Trending ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const Gap(40),
                                                    Checkbox(
                                                      activeColor:
                                                          const Color(0xff0FC8BB),
                                                      value: isChecked2,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          isChecked2 =
                                                              !isChecked2;
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Avaible Size",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const Gap(40),
                                                    Container(
                                                      color: Colors.white,
                                                      child: const DropdownMenu(
                                                          textStyle: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12),
                                                          menuStyle: MenuStyle(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              shadowColor:
                                                                  WidgetStatePropertyAll(
                                                                      Colors
                                                                          .amber),
                                                              elevation:
                                                                  WidgetStatePropertyAll(
                                                                      0),
                                                              backgroundColor:
                                                                  WidgetStatePropertyAll(
                                                                      Color.fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255))),
                                                          width: 100,
                                                          hintText: "Size",
                                                          dropdownMenuEntries: <DropdownMenuEntry<
                                                              String>>[
                                                            DropdownMenuEntry(
                                                                value: "None",
                                                                label: "None"),
                                                            DropdownMenuEntry(
                                                                value: "XS",
                                                                label: "XS"),
                                                            DropdownMenuEntry(
                                                                value: "S",
                                                                label: "S"),
                                                            DropdownMenuEntry(
                                                                value: "M",
                                                                label: "M"),
                                                            DropdownMenuEntry(
                                                                value: "L",
                                                                label: "L")
                                                          ]),
                                                    ),
                                                  ],
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(
                                                            start: 25,
                                                            end: 25,
                                                            top: 8,
                                                            bottom: 8),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        border: Border.all(
                                                            width: 2)),
                                                    child: const Text(
                                                      "Apply",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1.5)),
                            child: const Row(
                              children: [
                                LineIcon.filter(),
                                Gap(5),
                                Text(
                                  "Filter By",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            _key.currentState!.showBottomSheet((context) =>
                                StatefulBuilder(builder: (context, setState) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 500,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Row(
                                                  children: [
                                                    Spacer(),
                                                    LineIcon.sort(),
                                                    Text("Sort By"),
                                                    Spacer()
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Ascending Order (lower to higher)",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Radio(
                                                      activeColor:
                                                          const Color(0xff0FC8BB),
                                                      value: 5,
                                                      groupValue: rad,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          rad = val!;
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Descending Order (Higher to Lower)",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Radio(
                                                      activeColor:
                                                          const Color(0xff0FC8BB),
                                                      value: 1,
                                                      groupValue: rad,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          rad = val!;
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Most Popular",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Radio(
                                                      activeColor:
                                                          const Color(0xff0FC8BB),
                                                      value: 2,
                                                      groupValue: rad,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          rad = val!;
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Most Solded",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Radio(
                                                      activeColor:
                                                          const Color(0xff0FC8BB),
                                                      value: 3,
                                                      groupValue: rad,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          rad = val!;
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(
                                                            start: 25,
                                                            end: 25,
                                                            top: 8,
                                                            bottom: 8),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        border: Border.all(
                                                            width: 2)),
                                                    child: const Text(
                                                      "Apply",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1.5)),
                            child: const Row(
                              children: [
                                LineIcon.sort(),
                                Gap(5),
                                Text(
                                  "Sort By",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Expanded(
                        child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 250,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2),
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CategorieSpecifiqueItemLayout(),
                                ));
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "images/clothes/hoodies.jpg"))),
                            child: Column(
                              children: [
                                const Spacer(),
                                Container(
                                  color:
                                      const Color.fromARGB(255, 209, 209, 209),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Hoodie",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            LineIcon.starAlt(
                                              color: Colors.yellow,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "1220 Sold",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 2, 61, 69),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              "60.000 TND",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                    const Gap(5),
                    const ReturnBouttom()
                  ]
                ],
              )),
        ));
  }
}
