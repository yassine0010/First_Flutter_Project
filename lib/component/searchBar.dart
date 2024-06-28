import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(100)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "iphone",
            border: const OutlineInputBorder(
                borderSide: BorderSide(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            prefixIcon: GestureDetector(onTap: () {
              
            },child: const LineIcon.arrowLeft()),
            suffixIcon: const LineIcon.search()),
      ),
    );
  }
}
