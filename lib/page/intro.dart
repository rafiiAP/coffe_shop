import 'package:coffe_shop/widget/widget.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/intro.png',
          ),
          Column(
            children: [
              W.textBody('text'),
            ],
          ),
        ],
      ),
    );
  }
}
