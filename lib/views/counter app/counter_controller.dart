import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt num = 0.obs;

  adition() {
    num.value = num.value + 1;
    return num.value;
  }

  void sub() {
    if (num.value == 0) {
      0;
    } else {
      num.value = num.value - 1;
    }
  }
}
