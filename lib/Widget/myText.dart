import 'package:flutter/material.dart';

class myText extends StatelessWidget {
  final String text;
  final double margin;
  final Alignment textAlign;
  final double fontSize;
  final bool isBold;
  final EdgeInsetsGeometry padding;


  const myText({
    super.key,
    required this.text,
    required this.margin,
    required this.textAlign,
    required this.fontSize,
    required this.isBold,
    required this.padding

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: textAlign,
      margin: EdgeInsets.symmetric(horizontal: margin),
      padding: padding,
      child: RichText(
        text: TextSpan(
          text: text,
          style: TextStyle(color: Colors.black, fontSize: fontSize,fontWeight: isBold ? FontWeight.bold : FontWeight.normal,),
        ),
      ),
    );
  }
}
