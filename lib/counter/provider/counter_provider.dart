import 'package:flutter/material.dart';
import 'package:flutter_state_management/main.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  int _selectCount = 1;
  int get selectCount => _selectCount;

  void onSelect(int num) {
    _selectCount = num;
    notifyListeners();
    logger.d('[Provider] Select selectCount : $_selectCount, count : $_count');
  }

  void onIncrement() {
    _count = _count + _selectCount;
    notifyListeners();
    logger
        .d('[Provider] Increment selectCount : $_selectCount, count : $_count');
  }

  void onDecrement() {
    _count = _count - _selectCount;
    notifyListeners();
    logger
        .d('[Provider] Decrement selectCount : $_selectCount, count : $_count');
  }

  void onReset() {
    _count = 0;
    _selectCount = 1;
    notifyListeners();
    logger.d('[Provider] Reset selectCount : $_selectCount, count : $_count');
  }
}
