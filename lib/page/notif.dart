import 'package:coffe_shop/widget/widget.dart';
import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: W.textBody('Notification'),
      ),
    );
  }
}
