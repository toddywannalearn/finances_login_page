import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LogoFigure1(),
                SizedBox(
                  height: 5,
                ),
                LogoFigure2(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LogoFigure3(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class LogoFigure1 extends StatelessWidget {
  const LogoFigure1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: const Color.fromRGBO(94, 92, 229, 1),
      ),
    );
  }
}

class LogoFigure2 extends StatelessWidget {
  const LogoFigure2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200.0)),
        color: Color.fromRGBO(94, 92, 229, 1),
      ),
    );
  }
}

class LogoFigure3 extends StatelessWidget {
  const LogoFigure3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(94, 92, 229, 1),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(200.0),
              bottomLeft: Radius.circular(200.0))),
    );
  }
}
