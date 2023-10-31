// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_shop/data/constant/color.dart';
import 'package:coffe_shop/page/statemanagement/detail_getx.dart';
import 'package:flutter/material.dart';

import 'package:coffe_shop/page/statemanagement/cappucino_getx.dart';
import 'package:coffe_shop/widget/widget.dart';
import 'package:get/get.dart';

class DetaliPage extends StatelessWidget {
  final CappucinoModel cappucinoModel;
  DetaliPage({
    Key? key,
    required this.cappucinoModel,
  }) : super(key: key);

  final DetailController ctrl = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColor.primary,
        backgroundColor: AppColor.background,
        title: W.textBody('Detail'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.heart_broken_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    cappucinoModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              W.padHeight16(),
              SizedBox(
                child: W.textBody(
                  cappucinoModel.title,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              W.padHeight5(),
              SizedBox(
                child: W.textBody(
                  cappucinoModel.subTitle,
                  color: AppColor.greyText,
                ),
              ),
              W.padHeight5(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        size: 17,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 5),
                      W.textBody(
                        cappucinoModel.rating.toString(),
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/images/coffe.png'),
                      ),
                      W.padwidth5(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/images/milk.png'),
                      )
                    ],
                  ),
                ],
              ),
              W.padHeight10(),
              const Divider(),
              W.padHeight16(),
              W.textBody(
                'Description',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              W.padHeight16(),
              W.textBody(
                cappucinoModel.desctiption,
                color: AppColor.greyText,
              ),
              W.padHeight16(),
              W.textBody(
                'Size',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              W.padHeight16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() =>
                      buildButton('S', ctrl.selectedValue.value == 'S', () {
                        ctrl.selectValue('S');
                      })),
                  W.padwidth10(),
                  Obx(() =>
                      buildButton('M', ctrl.selectedValue.value == 'M', () {
                        ctrl.selectValue('M');
                      })),
                  W.padwidth10(),
                  Obx(() =>
                      buildButton('L', ctrl.selectedValue.value == 'L', () {
                        ctrl.selectValue('L');
                      })),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsetsDirectional.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  W.textBody(
                    'Price',
                    color: AppColor.greyText,
                  ),
                  Flexible(
                    child: W.textBody(
                      "Rp. ${cappucinoModel.price}",
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            W.padwidth16(),
            W.eleBtn(
              height: 50,
              width: 150,
              child: W.textBody('Buy Now'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, bool isSelected, Function() onPressed) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor:
                  isSelected ? AppColor.primary.withOpacity(0.2) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              side: BorderSide(
                color: isSelected ? AppColor.primary : Colors.black,
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? AppColor.primary : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
