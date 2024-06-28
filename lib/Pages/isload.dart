import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout.dart';

class Isload extends StatefulWidget {
  const Isload({super.key});

  @override
  State<Isload> createState() => _IsloadState();
}

class _IsloadState extends State<Isload> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LayoutPage(),
              ),
              (route) => false,
            ));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
