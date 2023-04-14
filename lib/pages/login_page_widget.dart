import 'dart:io';

import 'package:finances_login_page/components/logo/logo_widget.dart';
import 'package:flutter/material.dart';

import '../components/botao/custom_elevated_button_widget.dart';
import '../components/botao/models/content.dart';
import '../components/botao/models/style.dart';
import '../components/texts/body_widget.dart';
import '../components/texts/link_widget.dart';
import '../components/texts/subtitle_widget.dart';
import '../components/texts/title_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LogoWidget(),
        const TextTitle(
            text: 'Get your Money Under Control', textAlign: TextAlign.center),
        const SizedBox(
          height: 30,
        ),
        const TextSubtitle(
          text: 'Manage your expenses.',
          textAlign: TextAlign.center,
        ),
        const TextSubtitle(
          text: 'Seamlessly.',
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomElevatedButton(
            onClick: () => print('clicked email'),
            style: Style(
              backgroundColor: const Color.fromRGBO(94, 92, 229, 1),
              borderRadius: BorderRadius.circular(5),
              width: screenWidth,
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            ),
            content: Content(
              text: const Text(
                'Sign Up with Email ID',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomElevatedButton(
            onClick: () => print('clicked google'),
            style: Style(
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(5),
              width: screenWidth,
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            ),
            content: Content(
              leading: const Image(
                image: AssetImage('assets/icons/google-color-icon.png'),
                width: 20,
                height: 20,
              ),
              text: const Text(
                'Sign Up with Google',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextBody(text: 'Already have an account?'),
            const SizedBox(
              width: 2,
            ),
            TextLink(
              text: 'Sign In',
              onClick: () => print('Sign In clicked'),
            ),
          ],
        ),
      ],
    );
  }
}
