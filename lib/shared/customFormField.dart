import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final Icon? icon;
  const CustomFormField({Key? key, required this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          suffixIcon: icon,
        ),
      ),
    );
  }
}
