import 'package:coffe_shop/data/constant/color.dart';
import 'package:coffe_shop/page/cappucino.dart';
import 'package:coffe_shop/page/statemanagement/home_getx.dart';
import 'package:coffe_shop/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController ctrl = Get.put(HomeController());

    return DefaultTabController(
      length: 4,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              expandedHeight: Get.mediaQuery.size.height * 0.4,
              backgroundColor: Colors.transparent,
              flexibleSpace: Stack(
                children: [
                  Image.asset(
                    'assets/images/bg_dashboard.png',
                    width: Get.width,
                    fit: BoxFit.fill,
                  ),
                  FlexibleSpaceBar(
                    background: SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  W.textBody(
                                    'Location',
                                    fontSize: 12,
                                    color: AppColor.greyText,
                                  ),
                                  W.padHeight5(),
                                  W.textBody(
                                    'Malang, Blimbing',
                                    color: AppColor.white,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                foregroundColor: AppColor.white,
                                backgroundColor: AppColor.primary,
                                child: W.textBody(
                                  'R',
                                ),
                              )
                            ],
                          ),
                          W.padHeight16(),
                          W.input(
                            filled: true,
                            fillColor: AppColor.gradientBot,
                            hintText: 'Search coffe',
                            colorHint: AppColor.hint,
                            prefixIcon: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.search_sharp,
                                color: AppColor.white,
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: 48,
                                decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Image.asset(
                                  'assets/images/setting.png',
                                ),
                              ),
                            ),
                          ),
                          W.padHeight16(),
                          Image.asset(
                            'assets/images/promo.png',
                            width: Get.width,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(16),
                  child: ButtonsTabBar(
                    controller: ctrl.tabController,
                    unselectedBackgroundColor: AppColor.white,
                    labelStyle: GoogleFonts.sora().copyWith(
                      color: AppColor.white,
                    ),
                    unselectedLabelStyle: GoogleFonts.sora().copyWith(
                      color: AppColor.unTab,
                    ),
                    unselectedBorderColor: AppColor.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    tabs: const [
                      Tab(
                        text: 'Cappuccino',
                      ),
                      Tab(
                        text: 'Machiato',
                      ),
                      Tab(
                        text: 'Latte',
                      ),
                      Tab(
                        text: 'Americano',
                      ),
                    ],
                  )),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: TabBarView(
            controller: ctrl.tabController,
            children: [
              CappucinoPage(),
              W.textBody('Machiato'),
              W.textBody('Latte'),
              W.textBody('Americano'),
            ],
          ),
        ),
      ),
      // child: Scaffold(
      //   extendBody: true,
      //   body: Stack(
      //     children: [
      //       Image.asset(
      //         'assets/images/bg_dashboard.png',
      //         width: Get.width,
      //         fit: BoxFit.fill,
      //       ),
      //       SingleChildScrollView(
      //         child: Padding(
      //           padding: const EdgeInsets.all(16),
      //           child: Column(
      //             children: [
      //               SafeArea(
      //                 bottom: false,
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         W.textBody(
      //                           'Location',
      //                           fontSize: 12,
      //                           color: AppColor.greyText,
      //                         ),
      //                         W.padHeight5(),
      //                         W.textBody(
      //                           'Malang, Blimbing',
      //                           color: AppColor.white,
      //                         ),
      //                       ],
      //                     ),
      //                     CircleAvatar(
      //                       foregroundColor: AppColor.white,
      //                       backgroundColor: AppColor.primary,
      //                       child: W.textBody(
      //                         'R',
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //               W.padHeight20(),
      //               W.input(
      //                 filled: true,
      //                 fillColor: AppColor.gradientBot,
      //                 hintText: 'Search coffe',
      //                 colorHint: AppColor.hint,
      //                 prefixIcon: GestureDetector(
      //                   onTap: () {},
      //                   child: const Icon(
      //                     Icons.search_sharp,
      //                     color: AppColor.white,
      //                   ),
      //                 ),
      //                 suffixIcon: GestureDetector(
      //                   onTap: () {},
      //                   child: Container(
      //                     margin: const EdgeInsets.only(right: 5),
      //                     width: 48,
      //                     decoration: BoxDecoration(
      //                       color: AppColor.primary,
      //                       borderRadius: BorderRadius.circular(13),
      //                     ),
      //                     child: Image.asset(
      //                       'assets/images/setting.png',
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               W.padHeight10(),
      //               W.padHeight20(),
      //               Image.asset(
      //                 'assets/images/promo.png',
      //                 width: Get.width,
      //                 fit: BoxFit.fill,
      //               ),
      //               W.padHeight10(),
      //               W.padHeight20(),
      //               ButtonsTabBar(
      //                 controller: ctrl.tabController,
      //                 unselectedBackgroundColor: AppColor.white,
      //                 labelStyle: GoogleFonts.sora().copyWith(
      //                   color: AppColor.white,
      //                 ),
      //                 unselectedLabelStyle: GoogleFonts.sora().copyWith(
      //                   color: AppColor.unTab,
      //                 ),
      //                 unselectedBorderColor: AppColor.white,
      //                 contentPadding:
      //                     const EdgeInsets.symmetric(horizontal: 16),
      //                 decoration: BoxDecoration(
      //                   color: AppColor.primary,
      //                   borderRadius: BorderRadius.circular(13),
      //                 ),
      //                 tabs: const [
      //                   Tab(
      //                     text: 'Cappuccino',
      //                   ),
      //                   Tab(
      //                     text: 'Machiato',
      //                   ),
      //                   Tab(
      //                     text: 'Latte',
      //                   ),
      //                   Tab(
      //                     text: 'Americano',
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 500,
      //                 child: Padding(
      //                   padding: const EdgeInsets.symmetric(horizontal: 5),
      //                   child: TabBarView(
      //                     controller: ctrl.tabController,
      //                     children: [
      //                       CappucinoPage(),
      //                       W.textBody('Machiato'),
      //                       W.textBody('Latte'),
      //                       W.textBody('Americano'),
      //                     ],
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
