import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnTxt;
  final Color? btnClr;
  final Color txtClr;
  final VoidCallback onPress;
  final bool isOutlineBorder;

  const CustomButton(
      {Key? key,
      required this.btnTxt,
      this.btnClr = Colors.blue,
      this.txtClr = Colors.white,
      required this.onPress,
      this.isOutlineBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: !isOutlineBorder
          ? MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                btnTxt,
                style: TextStyle(color: txtClr, fontSize: 16),
              ),
              color: btnClr,
              onPressed: onPress,
            )
          : OutlinedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("images/google.png"),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    btnTxt,
                    style: TextStyle(color: txtClr, fontSize: 16),
                  ),
                ],
              ),
              onPressed: onPress,
            ),
    );
  }
}
