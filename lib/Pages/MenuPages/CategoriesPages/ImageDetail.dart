import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Imagedetail extends StatefulWidget {
  final String imageUrl;
  const Imagedetail({super.key, required this.imageUrl});

  @override
  State<Imagedetail> createState() => _ImagedetailState();
}

class _ImagedetailState extends State<Imagedetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(
          tag: "z",
          child: PhotoView(
            imageProvider: AssetImage(widget.imageUrl),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
