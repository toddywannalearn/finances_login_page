import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const TextTitle({super.key, required this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {

    var textTheme = Theme.of(context).textTheme.displaySmall;
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: textTheme?.fontSize,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
