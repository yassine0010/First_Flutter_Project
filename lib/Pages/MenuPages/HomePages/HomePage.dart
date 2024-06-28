import 'package:flutter/material.dart';
import 'package:flutter_application_1/Colors/colors.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/Layouts/CategorieSpecifiqueItemLayout.dart';
import 'package:flutter_application_1/component/BoxProduct.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isSearchBarTapped = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                if (_isSearchBarTapped == true) ...[
                  const Gap(20),
                  Text(
                    "Sale offer",
                    style: TextStyle(
                        color: solde,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const CategorieSpecifiqueItemLayout(),
                          ));
                    },
                    child: const ListItem(
                      InfoItemText: "Sale offer",
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "The most sold",
                    style: TextStyle(
                        color: solde,
                        fontSize: (50 / 720) * MediaQuery.sizeOf(context).width,
                        fontWeight: FontWeight.bold),
                  ),
                  const Gap(20),
                  const ListItem(
                    InfoItemText: "the most sold",
                  ),
                  const Gap(10),
                  Text(
                    "The most Rated",
                    style: TextStyle(
                        color: solde,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Gap(20),
                  const ListItem(
                    InfoItemText: "most rated",
                  ),
                ],
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
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String InfoItemText;
  const ListItem({
    super.key,
    required this.InfoItemText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 240,
        child: ListView.builder(
          clipBehavior: Clip.none,
          itemCount: 50,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                BoxProduct(
                  InfoItemText: InfoItemText,
                ),
                const Gap(40)
              ],
            );
          },
        ));
  }
}
