import 'package:flutter/material.dart';
import 'package:flutter_appgooglesign/constrains.dart';



import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  CustomButton({
    @required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        height: 45,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(10),
        onPressed: onPress,
        color: primaryColor,
        child: CustomText(
          alignment: Alignment.center,
          text: text,
          color: Colors.white,
        ),
      ),
    );
  }
}
