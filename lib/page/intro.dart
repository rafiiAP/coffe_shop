import 'package:coffe_shop/data/constant/color.dart';
import 'package:coffe_shop/page/dashboard.dart';
import 'package:coffe_shop/page/home.dart';
import 'package:coffe_shop/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/intro.png',
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                W.textBody(
                  'Coffee so good,\nyour taste buds\nwill love it.',
                  color: AppColor.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
                W.padHeight10(),
                W.textBody(
                  'The best grain, the finest roast,\nthe powerful flavor.',
                  color: AppColor.subIntro,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                W.eleBtn(
                  onPressed: () {
                    Get.offAll(const DashboardPage());
                  },
                  padding: const EdgeInsets.symmetric(vertical: 21),
                  child: W.textBody(
                    'Get Started',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
