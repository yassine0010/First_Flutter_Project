import 'package:flutter/material.dart';
import 'package:flutter_application_1/Colors/colors.dart';

import 'package:flutter_application_1/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan,
        navigationBarTheme: const NavigationBarThemeData(
            iconTheme: WidgetStatePropertyAll(
                IconThemeData(color: Color.fromARGB(255, 2, 48, 45)))),
        textSelectionTheme: TextSelectionThemeData(selectionHandleColor: Bl),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LayoutPage(),
    );
  }
}
