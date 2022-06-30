import 'package:flutter/material.dart';

class AccountQuestion extends StatelessWidget {
  final String askTxt;
  final String btnTxt;
  final Color? btnTxtColor;
  final VoidCallback onPress;

  const AccountQuestion({Key? key, required this.askTxt, required this.btnTxt, this.btnTxtColor = Colors.blue, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(askTxt),
        TextButton(

            child: Text(
              btnTxt,
              style: TextStyle(color: btnTxtColor),
            ),
          onPressed: onPress,
        )
      ],
    );
  }
}
