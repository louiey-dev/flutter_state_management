import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/main.dart';

class CounterRiverpod extends StateNotifier<int> {
  // CounterRiverpod() : super(0);

  CounterRiverpod(super.state);

  int _count = 0;
  int get count => _count;

  int _selectCount = 1;
  int get selectCount => _selectCount;

  void onSelect(int num) {
    _selectCount = num;

    logger.d('[Riverpod] Select selectCount : $_selectCount, count : $_count');
  }

  void onIncrement() {
    _count = _count + _selectCount;

    logger
        .d('[Riverpod] Increment selectCount : $_selectCount, count : $_count');
  }

  void onDecrement() {
    _count = _count - _selectCount;
    logger
        .d('[Riverpod] Decrement selectCount : $_selectCount, count : $_count');
  }

  void onReset() {
    _count = 0;
    _selectCount = 1;
    logger.d('[Riverpod] Reset selectCount : $_selectCount, count : $_count');
  }
}
