import 'package:flutter/material.dart';
import 'package:flutter_state_management/counter/GetX/counter_getx.dart';
import 'package:flutter_state_management/counter/counter_screen_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterScreenGetx extends StatelessWidget {
  CounterScreenGetx({super.key});
  final CounterGetx counterGetx = Get.put(CounterGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Getx Stateful'),
      ),
      body: Column(
        children: [
          GetBuilder<CounterGetx>(
            builder: (_) => countScreenUI(
              context: context,
              count: counterGetx.count,
              selectCount: counterGetx.selectCount,
              onIncrement: counterGetx.onIncrement,
              onSelect: counterGetx.onSelect,
              onDecrement: counterGetx.onDecrement,
              onReset: counterGetx.onReset,
            ),
          ),
        ],
      ),
    );
  }
}
