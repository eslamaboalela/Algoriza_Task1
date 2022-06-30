import 'package:flutter/material.dart';
import 'package:country_dial_code/country_dial_code.dart';

class CountryDialPicker extends StatelessWidget {
  const CountryDialPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Row(
        children: [
          CountryDialCodePicker(
            initialSelection: "EG",
            onChanged: (value) {
              print(value.dialCode);
            },
            showFlag: false,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Eg: 102154362',
              ),
            ),
          )
        ],
      ),
    );
  }
}
