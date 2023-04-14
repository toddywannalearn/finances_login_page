import 'package:finances_login_page/pages/login_page_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Material(
          color: Colors.black,
          child: LoginPage(),
        ),
      ),
    );
  }
}
