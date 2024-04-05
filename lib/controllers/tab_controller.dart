import 'package:get/get.dart';

class TabIndexController extends GetxController {
  RxInt _tabindex = 0.obs;

  int get tabindex => _tabindex.value;

  set settabindex(int newvalue) {
    _tabindex.value = newvalue;
  }
}
