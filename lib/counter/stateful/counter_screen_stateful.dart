import 'package:flutter/material.dart';
import 'package:flutter_state_management/counter/counter_screen_ui.dart';
import 'package:flutter_state_management/main.dart';

class CounterScreenStateful extends StatefulWidget {
  const CounterScreenStateful({super.key});

  @override
  State<CounterScreenStateful> createState() => _CounterScreenStatefulState();
}

class _CounterScreenStatefulState extends State<CounterScreenStateful> {
  int _count = 0;
  int _selectCount = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return CounterUI();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Counter Stateful'),
      ),
      body: countScreenUI(
        context: context,
        count: _count,
        selectCount: _selectCount,
        onIncrement: _onIncrement,
        onSelect: _onSelect,
        onDecrement: _onDecrement,
        onReset: _onReset,
      ),
    );
  }

  void _onSelect(int num) {
    setState(() {
      _selectCount = num;
      logger.d('Select selectCount : $_selectCount, count : $_count');
    });
  }

  void _onIncrement() {
    setState(() {
      _count = _count + _selectCount;
      logger.d('Increment selectCount : $_selectCount, count : $_count');
    });
  }

  void _onDecrement() {
    setState(() {
      _count = _count - _selectCount;
      logger.d('Decrement selectCount : $_selectCount, count : $_count');
    });
  }

  void _onReset() {
    setState(() {
      _count = 0;
      _selectCount = 1;
      logger.d('Reset selectCount : $_selectCount, count : $_count');
    });
  }
}
