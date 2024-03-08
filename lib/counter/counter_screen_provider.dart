import 'package:flutter/material.dart';
import 'package:flutter_state_management/counter/counter_provider.dart';
import 'package:flutter_state_management/counter/counter_screen_ui.dart';
import 'package:provider/provider.dart';

class CounterScreenProvider extends StatelessWidget {
  const CounterScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: ((context) => CounterProvider()),
      child: Consumer<CounterProvider>(builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            title: const Text('Counter Provider'),
          ),
          body: countScreenUI(
            context: context,
            count: value.count,
            selectCount: value.selectCount,
            onIncrement: value.onIncrement,
            onSelect: value.onSelect,
            onDecrement: value.onDecrement,
            onReset: value.onReset,
          ),
        );
      }),
    );
  }
}
