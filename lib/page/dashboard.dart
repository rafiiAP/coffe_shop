import 'package:coffe_shop/data/constant/color.dart';
import 'package:coffe_shop/page/chart.dart';
import 'package:coffe_shop/page/home.dart';
import 'package:coffe_shop/page/like.dart';
import 'package:coffe_shop/page/notif.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int nIndex = 0;

  List<Widget> vaPage = <Widget>[
    const MyHomePage(),
    const LikePage(),
    const ChartPage(),
    const NotifPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      nIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: vaPage[nIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            onItemTapped(value);
          },
          currentIndex: nIndex,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: AppColor.greyBtn,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: ImageIcon(
                AssetImage(
                  'assets/images/home.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Like',
              icon: ImageIcon(
                AssetImage(
                  'assets/images/Heart.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Shop',
              icon: ImageIcon(
                AssetImage(
                  'assets/images/chart.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notif',
              icon: ImageIcon(
                AssetImage(
                  'assets/images/Notification.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
