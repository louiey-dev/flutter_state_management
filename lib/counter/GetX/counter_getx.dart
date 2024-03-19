import 'package:flutter_state_management/main.dart';
import 'package:get/get.dart';

class CounterGetx extends GetxController {
  int _count = 0;
  int get count => _count;

  int _selectCount = 1;
  int get selectCount => _selectCount;

  void onSelect(int num) {
    _selectCount = num;
    update();
    logger.d('[Getx] Select selectCount : $_selectCount, count : $_count');
  }

  void onIncrement() {
    _count = _count + _selectCount;
    update();
    logger.d('[Getx] Increment selectCount : $_selectCount, count : $_count');
  }

  void onDecrement() {
    _count = _count - _selectCount;
    update();
    logger.d('[Getx] Decrement selectCount : $_selectCount, count : $_count');
  }

  void onReset() {
    _count = 0;
    _selectCount = 1;
    update();
    logger.d('[Getx] Reset selectCount : $_selectCount, count : $_count');
  }
}
