
import 'package:flutter/material.dart';

import 'custom_text.dart';


class  CustomSocialbutton extends StatelessWidget {

  final String text;
  final String ImageName;
  final Function Onpres;

  const CustomSocialbutton({Key key, this.text, this.ImageName, this.Onpres}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        height:45.0 ,
        onPressed: Onpres,
        color: Color(0xffE8E8E8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImageName),
            SizedBox(
              width: 30,
            ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
