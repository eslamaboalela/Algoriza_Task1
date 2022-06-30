import 'package:flutter/material.dart';
import 'package:login_register/shared/labels.dart';

class MainTitle extends StatelessWidget {
  final String lblTxt;
  const MainTitle({Key? key, required this.lblTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Labels(
          txt: lblTxt,
          fntBold: true,
          fntSize: 35,
        ),
        Row(
          children: [
            Text(
              "Help",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 5,),
            CircleAvatar(
              child: Icon(
                Icons.question_mark,
                size: 12,
              ),
              radius: 8,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}
