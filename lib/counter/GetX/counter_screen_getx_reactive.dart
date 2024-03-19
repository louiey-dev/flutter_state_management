import 'package:flutter/material.dart';
import 'package:flutter_state_management/counter/GetX/counter_getx_reactive.dart';
import 'package:flutter_state_management/counter/counter_screen_ui.dart';
import 'package:get/get.dart';

class CounterScreenGetxReactive extends StatelessWidget {
  CounterScreenGetxReactive({super.key});
  final CounterGetxReactive counterGetxReactive =
      Get.put(CounterGetxReactive());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('GetxReactive Stateful'),
      ),
      body: Obx(
        () => countScreenUI(
          context: context,
          count: counterGetxReactive.count.value,
          selectCount: counterGetxReactive.selectCount.value,
          onIncrement: counterGetxReactive.onIncrement,
          onSelect: counterGetxReactive.onSelect,
          onDecrement: counterGetxReactive.onDecrement,
          onReset: counterGetxReactive.onReset,
        ),
      ),
    );
  }
}
