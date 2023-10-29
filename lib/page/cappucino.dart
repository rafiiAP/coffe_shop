// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_shop/data/constant/color.dart';
import 'package:coffe_shop/page/detail.dart';
import 'package:coffe_shop/page/statemanagement/cappucino_getx.dart';
import 'package:coffe_shop/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CappucinoPage extends StatelessWidget {
  CappucinoPage({super.key});

  final CappucinoController ctrl = Get.put(CappucinoController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 16, bottom: 60),
      itemCount: ctrl.vaCappucino.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 10.5 / 16,
        crossAxisSpacing: 12,
        mainAxisSpacing: 14,
      ),
      itemBuilder: (context, index) {
        CappucinoModel cappucinoModel = ctrl.vaCappucino[index];
        return InkWell(
          onTap: () {
            Get.to(
              DetaliPage(cappucinoModel: cappucinoModel),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        cappucinoModel.image,
                        width: Get.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: 17,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 5),
                          W.textBody(
                            cappucinoModel.rating.toString(),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        W.textBody(
                          cappucinoModel.title,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                        W.padHeight5(),
                        W.textBody(
                          cappucinoModel.subTitle,
                          color: AppColor.greyText,
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis,
                        ),
                        W.padHeight10(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: W.textBody(
                                'Rp. ${cappucinoModel.price}',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.add_rounded,
                                color: AppColor.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
