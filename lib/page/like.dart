import 'package:coffe_shop/widget/widget.dart';
import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: W.textBody('Like'),
      ),
    );
  }
}
