import 'package:flutter_state_management/main.dart';
import 'package:get/get.dart';

class CounterGetxReactive extends GetxController {
  RxInt count = 0.obs;
  RxInt selectCount = 1.obs;

  void onSelect(int num) {
    selectCount.value = num;
    logger
        .d('[GetxReactive] Select selectCount : $selectCount, count : $count');
  }

  void onIncrement() {
    count = count + selectCount.value;
    logger.d(
        '[GetxReactive] Increment selectCount : $selectCount, count : $count');
  }

  void onDecrement() {
    count = count - selectCount.value;
    logger.d(
        '[GetxReactive] Decrement selectCount : $selectCount, count : $count');
  }

  void onReset() {
    count.value = 0;
    selectCount.value = 1;
    logger.d('[GetxReactive] Reset selectCount : $selectCount, count : $count');
  }
}
