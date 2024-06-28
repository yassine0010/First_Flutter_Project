
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Colors/colors.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/ImageDetail.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/component/ReturnBouttom.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';
import 'package:photo_view/photo_view.dart';

class Categoriespecifiqueitem extends StatefulWidget {
  const Categoriespecifiqueitem({super.key});

  @override
  State<Categoriespecifiqueitem> createState() =>
      _CategoriespecifiqueitemState();
}

bool _isSearchBarTapped = true;
List<String> sizes = [
  "XXS",
  "XS",
  "S",
  "M",
  "L",
  "XL",
  "XXL",
  "XXXL",
  "4XL",
  "5XL"
];

class _CategoriespecifiqueitemState extends State<Categoriespecifiqueitem> {
  int selectedColorIndex = -1;
  int selectedSizeIndex = -1;

  int quantite = 1;
  bool likeIt = false;
  bool isGodd = false;
  bool isGood = false;

  Color ConColor = const Color.fromARGB(255, 255, 255, 255);
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  var MylistImage = [
    "images/clothes/chemise.jpg",
    "images/clothes/suit.jpg",
    "images/clothes/hat.jpg",
  ];
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
                    const Gap(20),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                      ),
                      child: Stack(
                        children: [
                          Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Imagedetail(
                                          imageUrl: MylistImage[index]),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "z",
                                  child: PhotoView(
                                    backgroundDecoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                    imageProvider: AssetImage(
                                      MylistImage[index],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: 3,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(color: Colors.cyan),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: Pink,
                                  borderRadius: BorderRadius.circular(300)),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Center(
                                  child: Text(
                                    "Free Shpping",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: solde,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: Pink,
                                  borderRadius: BorderRadius.circular(200)),
                              child: Center(
                                child: Text(
                                  "-50%",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: solde,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 224, 224, 224),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Some Random Clothes",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                            onPressed: () {
                                              if (likeIt == false) {
                                                showOkAlertDialog(
                                                    message:
                                                        "Added To Favorite",
                                                    context: context);
                                              }
                                              setState(() {
                                                likeIt = !likeIt;
                                              });
                                            },
                                            icon: likeIt == false
                                                ? const LineIcon.heart()
                                                : const LineIcon.heartAlt(
                                                    color: Colors.pink,
                                                  )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "45.000 TND",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: solde,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Gap(20),
                                        const Text(
                                          "90.000 TND",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                    const Gap(20),
                                    Row(
                                      children: [
                                        const Text(
                                          "12553 Sold",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        AnimatedRatingStars(
                                          initialRating: 4.5,
                                          maxRating: 5,
                                          filledColor: Colors.amber,
                                          emptyColor: Colors.grey,
                                          filledIcon: Icons.star,
                                          halfFilledIcon: Icons.star_half,
                                          emptyIcon: Icons.star_border,
                                          onChanged: (double rating) {
                                            print('Rating: $rating');
                                          },
                                          displayRatingValue: true,
                                          interactiveTooltips: true,
                                          customFilledIcon: Icons.star,
                                          customHalfFilledIcon: Icons.star_half,
                                          customEmptyIcon: Icons.star_border,
                                          starSize: 16.0,
                                          readOnly: true,
                                        ),
                                        const Gap(5),
                                        const Text(
                                          "20 Review",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                    const Gap(20),
                                    Row(
                                      children: [
                                        const Text(
                                          "Quantity :",
                                        ),
                                        const Gap(5),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              quantite -= 1;
                                            });
                                          },
                                          child: const LineIcon.angleLeft(
                                            size: 40,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(width: 2)),
                                          padding: const EdgeInsets.only(
                                              right: 8,
                                              left: 8,
                                              top: 2,
                                              bottom: 2),
                                          child: Text(
                                            "$quantite",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              quantite += 1;
                                            });
                                          },
                                          child: const LineIcon.angleRight(
                                            size: 40,
                                          ),
                                        )
                                      ],
                                    ),
                                    const Gap(20),
                                    SizedBox(
                                      height: 40,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 10,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    selectedColorIndex = index;
                                                    isGodd = !isGodd;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          selectedColorIndex ==
                                                                      index &&
                                                                  isGodd
                                                              ? const Color.fromARGB(
                                                                  255,
                                                                  249,
                                                                  249,
                                                                  249)
                                                              : ConColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border:
                                                          selectedColorIndex ==
                                                                      index &&
                                                                  isGodd
                                                              ? Border.all(
                                                                  width: 2)
                                                              : Border.all(
                                                                  width: 1)),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.circle,
                                                          color: Colors.brown,
                                                        ),
                                                        Gap(5),
                                                        Text("Brown")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Gap(10)
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    const Gap(20),
                                    SizedBox(
                                      height: 40,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 10,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    selectedSizeIndex = index;
                                                    isGood = !isGood;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          selectedSizeIndex ==
                                                                      index &&
                                                                  isGood
                                                              ? const Color.fromARGB(
                                                                  255,
                                                                  249,
                                                                  249,
                                                                  249)
                                                              : ConColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border:
                                                          selectedSizeIndex ==
                                                                      index &&
                                                                  isGood
                                                              ? Border.all(
                                                                  width: 2)
                                                              : Border.all(
                                                                  width: 1)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SizedBox(
                                                        width: 40,
                                                        child: Center(
                                                            child: Text(
                                                                sizes[index]))),
                                                  ),
                                                ),
                                              ),
                                              const Gap(10)
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    const Gap(30),
                                    const Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Random uselss Information Random uselss Information Random uselss Information Random uselss Information Random uselss Information Random uselss Information Random uselss Information Random uselss Information Random uselss Information ",
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                    const Gap(10),
                    Row(
                      children: [
                        const ReturnBouttom(),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            if (selectedColorIndex == -1 ||
                                selectedSizeIndex == -1) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text(
                                        "Please select color or size",
                                        style: TextStyle(color: Colors.white),
                                      )));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      backgroundColor:
                                          Color.fromARGB(255, 14, 187, 75),
                                      content: Text(
                                        "Added succsefully",
                                        style: TextStyle(color: Colors.white),
                                      )));
                            }
                          },
                          child: Container(
                            padding: const EdgeInsetsDirectional.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(500),
                                border: Border.all(
                                  width: 2,
                                  color: const Color.fromARGB(255, 2, 46, 82),
                                )),
                            child: const Text("Add to Cart"),
                          ),
                        )
                      ],
                    )
                  ]
                ],
              )),
        ));
  }
}
//
