import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class ReturnBouttom extends StatelessWidget {
  const ReturnBouttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 2, 46, 82),
                )),
            child: const LineIcon.arrowLeft(
              size: 20,
              color: Color.fromARGB(255, 2, 46, 82),
            ),
          ),
        ),
      ],
    );
  }
}
