import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class categorycontroller extends GetxController {
  RxString category = ''.obs;

  String get CategoryValue => category.value;

  set updatecategory(String value) {
    category.value = value;
  }

  RxString title = ''.obs;

  String get titleValue => title.value;

  set updatetitle(String value) {
    title.value = value;
  }
}
