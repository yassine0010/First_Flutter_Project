import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/MenuPages/CategoriesPages/Layouts/CategorieGenderPageLayout.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class Categoriepage extends StatefulWidget {
  const Categoriepage({super.key});

  @override
  State<Categoriepage> createState() => _CategoriepageState();
}

final List<String> brands = [
  "Nike",
  "Adidas",
  "Puma",
  "Under Armour",
  "Reebok",
  "Levi's",
  "Zara",
  "H&M",
  "Uniqlo",
  "Gucci",
  "Prada",
  "Louis Vuitton",
  "Burberry",
  "Versace",
  "Armani",
  "Ralph Lauren",
  "Tommy Hilfiger",
  "Lacoste",
  "The North Face",
  "Columbia",
  "Patagonia",
  "Calvin Klein",
  "Diesel",
  "Guess",
  "Fendi",
  "Chanel",
  "Hermès",
  "Dolce & Gabbana",
  "Hugo Boss",
  "Michael Kors",
  "Balenciaga",
  "Supreme",
  "Off-White",
  "Vans",
  "Timberland",
  "New Balance",
  "Champion",
  "Fila",
  "Converse",
  "Skechers",
  "ASICS",
  "Crocs",
  "Dockers",
  "Abercrombie & Fitch",
  "Hollister",
  "Banana Republic",
  "GAP",
  "Old Navy",
  "American Eagle",
  "Forever 21",
];

bool _isSearchBarTapped = true;

class _CategoriepageState extends State<Categoriepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                          borderRadius: BorderRadius.all(Radius.circular(100))),
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
                SizedBox(
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 16),
                              child: Text(brands[index]),
                            ),
                            const Gap(10)
                          ],
                        );
                      },
                    )),
                Expanded(
                    child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                              builder: (context) => const Categoriegenderpagelayout(),
                            ));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 206, 206, 206),
                        ),
                        padding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        child: Column(
                          children: [const Spacer(), Text(brands[index]), const Spacer()],
                        ),
                      ),
                    );
                  },
                )),
              ]
            ],
          ),
        )));
  }
}
