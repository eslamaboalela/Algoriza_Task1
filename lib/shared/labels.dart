import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String txt;
  final bool fntBold;
  final double fntSize;

  const Labels({Key? key, required this.txt, this.fntBold = false, this.fntSize = 12,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        txt,
        style: TextStyle(
          fontWeight: fntBold ? FontWeight.w500 : FontWeight.normal,
          fontSize: fntSize,
        ),
      ),
    );
  }
}
