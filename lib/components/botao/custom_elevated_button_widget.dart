import 'package:finances_login_page/components/botao/models/style.dart';
import 'package:flutter/material.dart';

import 'models/content.dart';

class CustomElevatedButton extends StatelessWidget {
  final Content? content;
  final Style? style;
  final Function()? onClick;

  const CustomElevatedButton(
      {super.key, this.content, this.style, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: style?.borderRadius,
      color: style?.backgroundColor,
      child: InkWell(
        mouseCursor: SystemMouseCursors.click,
        highlightColor: Colors.deepPurpleAccent,
        borderRadius: style?.borderRadius,
        onTap: onClick,
        child: Container(
          padding: style!.padding ??
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          width: style?.width,
          height: style?.height,
          decoration: BoxDecoration(
            border: style!.border,
            borderRadius: style!.borderRadius,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              content?.leading != null
                  ? Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: content?.leading)
                  : const SizedBox(),
              content?.text ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
