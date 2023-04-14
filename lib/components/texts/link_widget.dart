import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Function()? onClick;

  const TextLink({super.key, required this.text, this.textAlign, this.onClick});

  @override
  Widget build(BuildContext context) {

    var textTheme = Theme.of(context).textTheme.bodyLarge;
    return InkWell(
      onTap: onClick,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: textTheme?.fontSize,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          decorationStyle: TextDecorationStyle.solid,
          decoration: TextDecoration.underline
        ),
      ),
    );
  }
}
