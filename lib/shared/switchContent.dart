import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SwithContent extends StatelessWidget {
  final String image;
  final String stepImage;
  final List<String> title;
  final List<String> desc;
  const SwithContent(
      {Key? key,
      required this.image,
      required this.stepImage,
      required this.title,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: SvgPicture.asset(image)),
        Column(
          children: [
            Text(
              title[0],
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            Text(
              title[1],
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        //SizedBox(height: 10,),
        Column(
          children: [
            Text(
              desc[0],
              style: TextStyle(fontSize: 16),
            ),
            Text(
              desc[1],
              style: TextStyle(fontSize: 16),
            ),
            Text(
              desc[2],
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        /*SizedBox(
          height: 15,
        ),*/
        SvgPicture.asset(stepImage),
        //SizedBox(height: 10,),
      ],
    );
  }
}
