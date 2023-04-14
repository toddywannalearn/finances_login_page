import 'package:flutter/material.dart';

class TextSubtitle extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const TextSubtitle({super.key, required this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {

    var textTheme = Theme.of(context).textTheme.titleLarge;
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: textTheme?.fontSize,
        color: const Color.fromRGBO(108, 108, 110, 1.0),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
