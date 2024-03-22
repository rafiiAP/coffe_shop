// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

class CappucinoController extends GetxController {
  var vaCappucino = [
    CappucinoModel(
      image: 'assets/images/item1.png',
      title: 'Cappucino',
      subTitle: 'With oat milk',
      price: '50000',
      rating: 4.8,
      desctiption:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
    ),
    CappucinoModel(
      image: 'assets/images/item2.png',
      title: 'Cappucino',
      subTitle: 'With Matcha',
      price: '55000',
      rating: 5,
      desctiption:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
    ),
    CappucinoModel(
      image: 'assets/images/item3.png',
      title: 'Cappucino',
      subTitle: 'with Chocolate',
      price: '45000',
      rating: 4.7,
      desctiption:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
    ),
    CappucinoModel(
      image: 'assets/images/item4.png',
      title: 'Cappucino',
      subTitle: 'With Vanilla',
      price: '50000',
      rating: 4.9,
      desctiption:
          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
    ),
  ].obs;
}

class CappucinoModel {
  String title;
  String subTitle;
  String desctiption;
  String price;
  String image;
  double rating;

  CappucinoModel({
    required this.title,
    required this.subTitle,
    required this.desctiption,
    required this.price,
    required this.image,
    required this.rating,
  });
}
