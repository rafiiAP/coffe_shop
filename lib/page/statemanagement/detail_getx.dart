// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

class DetailController extends GetxController {
  final selectedValue = ''.obs;

  void selectValue(String value) {
    selectedValue.value = value;
  }
}
